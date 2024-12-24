import {
  ChangeDetectorRef,
  Component,
  OnDestroy,
  OnInit,
  ViewEncapsulation,
  ViewChild
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { untilDestroyed, UntilDestroy } from '@ngneat/until-destroy';
import { PlayersService } from '../_services/players.service';
import { NgChartsModule } from 'ng2-charts';
import { BaseChartDirective } from 'ng2-charts';


@UntilDestroy()
@Component({
  selector: 'player-summary-component',
  templateUrl: './player-summary.component.html',
  styleUrls: ['./player-summary.component.scss'],
  encapsulation: ViewEncapsulation.None,
})
export class PlayerSummaryComponent implements OnInit, OnDestroy {

  apiResponse: any;
  playerID: number = 1;
  endpoint: any;
  games: any;
  shots: Array<any> = [];
  image = new Image();
  plugin: any = '';
  name: any = 'Micheal';
  lineChartData: Array<any> = [];

  @ViewChild(BaseChartDirective) chart: BaseChartDirective;

  constructor(
    protected activatedRoute: ActivatedRoute,
    protected cdr: ChangeDetectorRef,
    protected playersService: PlayersService,
  ) {
    this.image.src = "../../../";

    this.plugin = {
      id: 'customCanvasBackgroundImage',
      beforeDraw: (chart) => {
        if (this.image.complete) {
          const ctx = chart.ctx;
          const { top, left, width, height } = chart.chartArea;
          const x = left + width / 2 - this.image.width / 2;
          const y = top + height / 2 - this.image.height / 2;
          ctx.drawImage(this.image, x, y);
          chart.update()
        } else {
          this.image.onload = () => chart.draw();
          chart.update()
        }
      }
    };

  }
  fetchApiResponse(): void {
    this.playersService.getPlayerSummary(this.playerID).pipe(untilDestroyed(this)).subscribe(data => {
      // this.shots = [];
      // this.lineChartData = [];
      this.endpoint = data.endpoint;
      this.SystemName = data.apiResponse.name;
      this.games = data.apiResponse.games;

      for (let i = 0; i < this.games.length; i++) {
        this.shots = [...this.shots, ...this.games[i].shots];
        console.log(this.shots);
      }
      // this.apiResponse = JSON.stringify(data.apiResponse, null, 2);
      for (let i = 0; i < this.shots.length; i++) {
        let x = this.shots[i]["locationX"];
        let y = this.shots[i]["locationY"];
        const shotObj = {
          x: this.shots[i]["locationX"],
          y: this.shots[i]["locationY"]
        };

        this.lineChartData.push(shotObj);
      }

      this.labelMFL = [
        {
          data: this.lineChartData,
          label: this.SystemName,
          // label: 'Series A',
          pointRadius: 5,
          pointBackgroundColor: ['red']
        },
      ];

      this.cdr.detectChanges();
      this.chart.chart.update();
      this.chart.update();
    });
  }

  public SystemName: string = this.name;
  firstCopy = false;

  public labelMFL: Array<any> = [
    {
      data: this.lineChartData,
      label: this.SystemName,
      // label: 'Series A',
      pointRadius: 5,
      pointBackgroundColor: ['red']
    },
  ];

  public lineChartType = 'scatter';

  public chartClicked(e: any): void {
    console.log(e);
  }
  public chartHovered(e: any): void {
    console.log(e);
  }

  changeParams(): void {
    this.fetchApiResponse();
  }

  ngOnInit(): void {
    this.playersService.getPlayerSummary(1).pipe(untilDestroyed(this)).subscribe(data => {
      console.log(data.apiResponse);
    });

  }

  ngOnDestroy() {
  }

}