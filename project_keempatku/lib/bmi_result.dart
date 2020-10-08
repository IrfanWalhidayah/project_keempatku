import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.tinggi_badan,
      @required this.berat_badan,
      @required this.nama_lengkap,
      @required this.tahun_lahir,
      @required this.bulan_lahir,
      @required this.tanggal_lahir,
      @required this.jk});

  final int tinggi_badan;

  final int tahun_lahir;

  final int bulan_lahir;

  final int tanggal_lahir;

  final int berat_badan;

  final String nama_lengkap;

  final String jk;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);

    String cBMI;

    if (bmi >= 28)
      cBMI = "OBESE ";
    else if (bmi >= 23)
      cBMI = "OVER WEIGHT";
    else if (bmi >= 17.5)
      cBMI = "NORMAL";
    else
      cBMI = "UNDER WEIGHT";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('RESULT BMI'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            new Text(
              "Nama Lengkap : ${nama_lengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            new Text(
              "Umur : ${2020 - tahun_lahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            new Text(
              "Jenis Kelamin: ${jk} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.red,
              ),
            ),
            Text(
              'RATA-RATA NORMAL BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.red,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,

        child: Container(
          height: 60,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text(
            'Developer By Irfan Walhidayah',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),

        //elevation: 0,
      ),
    );
  }
}
