//[Dashboard Javascript]

//Project:	SoftMaterial admin - Responsive Admin Template
//Primary use:   Used only for the main dashboard (index.html)

$(function () {

  'use strict';

	
		WeatherIcon.add('icon1'	, WeatherIcon.SLEET , {stroke:false , shadow:false , animated:true } );
	
  //sparkline
		
		
		$("#baralc").sparkline([32,24,26,24,32,26,40,34,22,24,22,24,34,32,38,28,36,36,40,38,30,34,38], {
			type: 'bar',
			height: '80',
			barWidth: 8,
			barSpacing: 5,
			barColor: '#ffffff',
		});
	
		
		$("#linearea").sparkline([32,24,26,24,32,26,40,34,22,24], {
			type: 'line',
			width: '100%',
			height: '80',
			lineColor: '#ffffff',
			fillColor: '#ffffff',
			lineWidth: 2,
		});
	
		$("#linechart").sparkline([32,24,26,24,32,26,40,34,22,24], {
			type: 'line',
			width: '100%',
			height: '80',
			lineColor: '#ffffff',
			fillColor: '#28D094',
			lineWidth: 2,
			minSpotColor: '#ffffff',
			maxSpotColor: '#ffffff',
		});
	

  //sales
 	
	Morris.Area({
        element: 'morris-area-chart',
        data: [{
                    period: '2010',
                    laptop: 10
                    
                }, {
                    period: '2011',
                    laptop: 9542
                }, {
                    period: '2012',
                    laptop: 6584
                }, {
                    period: '2013',
                    laptop: 4521
                }, {
                    period: '2014',
                    laptop: 6254
                }, {
                    period: '2015',
                    laptop: 7895
                }, {
                    period: '2016',
                    laptop: 10258
                }, {
                    period: '2017',
                    laptop: 15751
                }, {
                    period: '2018',
                    laptop: 14235
                }, {
                    period: '2019',
                    laptop: 15501
                }


                ],
                lineColors: ['#666EE8'],
                xkey: 'period',
                ykeys: ['laptop'],
                labels: ['Net Groth'],
                pointSize: 0,
                lineWidth: 2,
                fillOpacity: 0.5,
                resize: true,
                behaveLikeLine: true,
                gridLineColor: '#e0e0e0',
                hideHover: 'auto'
        
    });	
	
	
	if( $('#chart_8').length > 0 ){
		var ctx2 = document.getElementById("chart_8").getContext("2d");
		var data2 = {
			labels: ["January", "February", "March", "April", "May", "June", "July"],
			datasets: [
				{
					label: "My First Week",
					backgroundColor: "#28D094",
					borderColor: "#28D094",
					data: [15, 20, 70, 51, 36, 85, 50]
				},
				{
					label: "My Second Week",
					backgroundColor: "#1E9FF2",
					borderColor: "#1E9FF2",
					data: [28, 48, 40, 19, 86, 27, 90]
				},
				{
					label: "My Third Week",
					backgroundColor: "#FF4961",
					borderColor: "#28D0FF496194",
					data: [8, 28, 50, 29, 76, 77, 40]
				}
			]
		};
		
		var hBar = new Chart(ctx2, {
			type:"bar",
			data:data2,
			
			options: {
				tooltips: {
					mode:"label"
				},
				scales: {
					yAxes: [{
						stacked: true,
						gridLines: {
							color: "rgba(135,135,135,0)",
						},
						ticks: {
							fontFamily: "Poppins",
							fontColor:"#878787"
						}
					}],
					xAxes: [{
						stacked: true,
						gridLines: {
							color: "rgba(135,135,135,0)",
						},
						ticks: {
							fontFamily: "Poppins",
							fontColor:"#878787"
						}
					}],
					
				},
				elements:{
					point: {
						hitRadius:40
					}
				},
				animation: {
					duration:	3000
				},
				responsive: true,
				maintainAspectRatio:false,
				legend: {
					display: false,
				},
				
				tooltip: {
					backgroundColor:'rgba(33,33,33,1)',
					cornerRadius:0,
					footerFontFamily:"'Poppins'"
				}
				
			}
		});
	}
	
	/*
     * Flot Interactive Chart
     * -----------------------
     */
    // We use an inline data source in the example, usually data would
    // be fetched from a server
    var data = [], totalPoints = 300

    function getRandomData() {

      if (data.length > 0)
        data = data.slice(1)

      // Do a random walk
      while (data.length < totalPoints) {

        var prev = data.length > 0 ? data[data.length - 1] : 50,
            y    = prev + Math.random() * 10 - 5

        if (y < 0) {
          y = 0
        } else if (y > 100) {
          y = 100
        }

        data.push(y)
      }

      // Zip the generated y values with the x values
      var res = []
      for (var i = 0; i < data.length; ++i) {
        res.push([i, data[i]])
      }

      return res
    }

    var interactive_plot = $.plot('#interactive', [getRandomData()], {
      grid: {
            color: "#AFAFAF"
            , hoverable: true
            , borderWidth: 0
            , backgroundColor: '#ffffff'
        },
      series: {
        shadowSize: 0, // Drawing is faster without shadows
        color     : '#666EE8'
      },
	  tooltip: true,
      lines : {
        fill : false, //Converts the line chart to area chart
        color: '#666EE8'
      },
	  tooltipOpts: {
            content: "Visit: %y"
            , defaultTheme: false
        },
      yaxis : {
        min : 0,
        max : 100,
        show: true
      },
      xaxis : {
        show: true
      }
    })

    var updateInterval = 10 //Fetch data ever x milliseconds
    var realtime       = 'on' //If == to on then fetch data every x seconds. else stop fetching
    function update() {

      interactive_plot.setData([getRandomData()])

      // Since the axes don't change, we don't need to call plot.setupGrid()
      interactive_plot.draw()
      if (realtime === 'on')
        setTimeout(update, updateInterval)
    }

    //INITIALIZE REALTIME DATA FETCHING
    if (realtime === 'on') {
      update()
    }
    //REALTIME TOGGLE
    $('#realtime .btn').click(function () {
      if ($(this).data('toggle') === 'on') {
        realtime = 'on'
      }
      else {
        realtime = 'off'
      }
      update()
    })
    /*
     * END INTERACTIVE CHART
     */
	
}); // End of use strict

