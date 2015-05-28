var menuStrcture = [
	{
		title: 'Help',
		icon: 'fa fa-reorder',
		items: [
			{
				name: 'About The EMDK',
				link: '#guide-about',
			},		
			{
				name: 'Getting Started',
				icon: 'fa fa-ticket',
				link: '#',
				items: [
					{
						title: 'Getting Started',
						icon: 'fa fa-book',
						items: [
							{
								name: 'Setup The EMDK',
								link: '#guide-setup',
							},
							{
								name: 'Try the Sample',
								link: '#guide-sample-emdksamples',
							},
							{
								name: 'Build Hello EMDK',
								link: '#guide-tutorial-tutdatacaptureprofile',
							},
							{
								name: 'EMDK Profiles Overview',
								link: '#guide-profiles-usingwizard',
							}
						]
					}
				]
			},
			{
				name: 'Tutorials',
				icon: 'fa fa-terminal',
				link: '#',
				items: [
					{
						title: 'Tutorials',
						icon: 'fa fa-terminal',
						items: [
							{
								name: 'Profile Manager',
								link: '#',
								items: [
									{
										title: 'Profile Manager Tutorials',
										icon: 'fa fa-book',
										items: [
											{
												name: 'Basic Data Capture',
												link: '#guide-tutorial-tutdatacaptureprofile',
											},
											{
												name: 'Using Intent Output',
												link: '#guide-tutorial-tutdatacaptureprofilePt2',
											},
											{
												name: 'Multiple Profiles',
												link: '#guide-tutorial-tutdatacaptureprofilePt3',
											},
											{
												name: 'Using Broadcast Intent Output',
												link: '#guide-tutorial-tutdatacaptureprofilePt4',
											},
											{
												name: 'Modifying Profiles',
												link: '#guide-tutorial-tutModifyBarcodeProfileSettings',
											},
											{
												name: 'Using AppManager',
												link: '#guide-tutorial-tutMxAppManager',
											},
											{
												name: 'Setting the Default Launcher',
												link: '#guide-tutorial-tutMxDefaultLauncher',
											},
											{
												name: 'Setting the Clock',
												link: '#guide-tutorial-tutMxClock',
											},
											{
												name: 'Profile Errors',
												link: '#guide-tutorial-tutMxErrors',
											}
										]
									}
								]
							},
							{
								name: 'Platform Intents',
								link: '#',
								items: [
									{
										title: 'Platform Intent Tutorials',
										icon: 'fa fa-book',
										items: [
											{
												name: 'Datawedge Intents',
												link: '#guide-tutorial-tutdatacaptureintent',
											},
											{
												name: 'Battery Intent',
												link: '#guide-tutorial-tutbatteryintent',
											}
										]
									}
								]
							}
						]
					}
				]
			},
			{
				name: 'Samples',
				icon: 'fa fa-download',
				link: '#',
				items: [
					{
						title: 'Samples',
						icon: 'fa fa-download',
						items: [
							{
								name: 'Using EMDK Samples',
								link: '#guide-sample-emdksamples',
							},
							{
								name: 'DataCapture Profile Sample',
								link: '#guide-sample-sampledatacaptureprofile',
							},
							{
								name: 'AppManager Sample',
								link: '#guide-sample-sampleprofileapp',
							},
							{
								name: 'Clock Sample',
								link: '#guide-sample-sampleprofileclock',
							},
							{
								name: 'PowerManager Sample',
								link: '#guide-sample-sampleprofilepower',
							},
							{
								name: 'Platform Intent Samples',
								link: '#',
								items: [
									{
										title: 'Platform Intent Samples',
										icon: 'fa fa-download',
										items: [
											{
												name: 'Data Capture Platform Intent',
												link: '#guide-sample-sampledatacaptureintent',
											},
											{
												name: 'Battery Platform Intent',
												link: '#guide-sample-samplebatteryintent',
											}

										]
									}
								]
							},
						]
					}
				]
			}
			,
			{
				name: 'Reference',
				icon: 'fa fa-code',
				link: '#',
				items: [
					{
						title: 'Reference',
						icon: 'fa fa-code',
						items: [
							{
								name: 'Native Android',
								link: '#guide-reference-refnativeandroid',
							},
							{
								name: 'EMDK APIs',
								link: '#guide-reference-EMDKList',
								
							},
							{
								name: 'Profile Features',
								link: '#',
								items: [
									{
										title: 'Profile Features',
										icon: 'fa fa-book',
										items: [

											{
												name: 'EMDK Profiles Overview',
												link: '#guide-profiles-usingwizard',
											},	
											{
												name: 'Access Manager',
												link: '#guide-profiles-refAccessManager',
											},
											{
												name: 'App Manager',
												link: '#guide-profiles-refAppManager',
											},
											{
												name: 'Certificate Manager',
												link: '#guide-profiles-refCertManager',
											},
											{
												name: 'Clock',
												link: '#guide-profiles-refClockManager',
											},
											{
												name: 'Data Capture',
												link: '#',
												items: [
													{
														title: 'Data Capture',
														icon: 'fa fa-barcode',
														items: [
															{
																name: 'Activity Selection',
																link: '#guide-profiles-profileactivity',
															},														
															{
																name: 'Barcode',
																link: '#guide-profiles-profilebarcode',
															},
															{
																name: 'Intent Output',
																link: '#guide-profiles-profileintent',
															},
															{
																name: 'IP Output',
																link: '#guide-profiles-profileIP',
															},
															{
																name: 'Keystroke',
																link: '#guide-profiles-profilekeystroke',
															},
															{
																name: 'Magstripe',
																link: '#guide-profiles-profilemsr',
															},
														]
													}
												]
											},
											{
												name: 'GPRS Manager',
												link: '#guide-profiles-refGPRS',
											},
											{
												name: 'Persistence Manager',
												link: '#guide-profiles-refPersistanceManager',
											},
											{
												name: 'Power Manager',
												link: '#guide-profiles-refPowerManager',
											},
											{
												name: 'Wi-Fi',
												link: '#guide-profiles-refWiFiManager',
											}
										]
									}
								]
							},
							{
								name: 'Platform Intents',
								link: '#',
								items: [
									{
										title: 'Platform Intents',
										icon: 'fa fa-book',
										items: [
											{
												name: 'Datawedge Intents',
												link: '#guide-reference-refdatacaptureintent',
											},
											{
												name: 'Battery Intent',
												link: '#guide-reference-refbatteryintent',
											}
										]
									}
								]
							}
							
						]
					}
				]
			},
			{
				name: 'Using This Help',
				link: '#guide-abouthelp',
				icon: 'fa fa-question-circle'
			},
			
		]
	}
];