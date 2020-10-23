# Flight coordination in *Thyroptera*

> analyzing vocal behavior during group flight in Spix's disc-winged bats (Thyroptera tricolor)

![Inquiry call automatic detection](./img/example_fig.png)

## Table of contents
* [General info](#general-info)
* [Analyses](#Analyses)
* [To do list](#to-do-list)
* [Contact](#contact)

## General info

Code used for detecting inquiry calls produced during flight tests and analyzing dynamics of calling activity in solo and group flights

## Analysis

* [Automatic inquiry call detection](https://rpubs.com/marcelo-araya-salas/671954)
* [Calling activity results](https://rpubs.com/marcelo-araya-salas/671951)
    - Detecting with 2 or 3 different templates 
    - Cure current detections 
    - Calling rate along recordings 
    - Plot call rate per reproductive stage / sex? (include group baseline)
* [ID individuals in group flights](hhttps://rpubs.com/marcelo-araya-salas/679920)
    - 50 random forest with data subsets of same size for all individuals within a group
    - Testing different acoustic parameters sets
    - Determine probability threshold that optimizes sensitivity and number of calls used (all in solo flights)
    - Apply random forests on group flights, average probabilities and remove probabilities lower that optimal threshold 


## In progress

* Call individuality within groups based on acoustic structure
* Indetifying individuals in group flight
* Calculate a class probability threshold across groups that maximizes sensitivity and keeps a good enough sample size
* Create several models by resampling group call data so all individuals have the same n and then "average" class probabilities across models 
* Measure signal structure

## To-do list

* Repeatibility of calling rate (**groups** and individuals)
* Carry uncertainty of call ID prediction
* Look at coordination in group flights (randomization test?)


## Status
Project is: _in progress_

## Contact
Created by [Marcelo Araya-Salas](https://marceloarayasalas.weebly.com/)
