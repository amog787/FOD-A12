.class public Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/hal/GnssNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssHal"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addGeofence(IDDDIIII)Z
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .line 1360
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3200(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method protected classInitOnce()V
    .locals 0

    .line 1219
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$000()V

    .line 1220
    return-void
.end method

.method protected cleanup()V
    .locals 0

    .line 1235
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$400()V

    .line 1236
    return-void
.end method

.method protected cleanupBatching()V
    .locals 0

    .line 1338
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2700()V

    .line 1339
    return-void
.end method

.method protected deleteAidingData(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 1258
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->access$900(I)V

    .line 1259
    return-void
.end method

.method protected flushBatch()V
    .locals 0

    .line 1346
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2900()V

    .line 1347
    return-void
.end method

.method protected getBatchSize()I
    .locals 1

    .line 1330
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2500()I

    move-result v0

    return v0
.end method

.method protected getInternalState()Ljava/lang/String;
    .locals 1

    .line 1254
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$800()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()Z
    .locals 1

    .line 1231
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$300()Z

    move-result v0

    return v0
.end method

.method protected initBatching()Z
    .locals 1

    .line 1334
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2600()Z

    move-result v0

    return v0
.end method

.method protected initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .locals 0
    .param p1, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;
    .param p2, "reinitializeGnssServiceHandle"    # Z

    .line 1227
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$200(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    .line 1228
    return-void
.end method

.method protected injectBestLocation(IDDDFFFFFFJIJD)V
    .locals 0
    .param p1, "gnssLocationFlags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "horizontalAccuracy"    # F
    .param p11, "verticalAccuracy"    # F
    .param p12, "speedAccuracy"    # F
    .param p13, "bearingAccuracy"    # F
    .param p14, "timestamp"    # J
    .param p16, "elapsedRealtimeFlags"    # I
    .param p17, "elapsedRealtimeNanos"    # J
    .param p19, "elapsedRealtimeUncertaintyNanos"    # D

    .line 1274
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1200(IDDDFFFFFFJIJD)V

    .line 1278
    return-void
.end method

.method protected injectLocation(DDF)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "accuracy"    # F

    .line 1266
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1100(DDF)V

    .line 1267
    return-void
.end method

.method protected injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 1
    .param p1, "corrections"    # Landroid/location/GnssMeasurementCorrections;

    .line 1326
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2400(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    return v0
.end method

.method protected injectPsdsData([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "psdsType"    # I

    .line 1406
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->access$4300([BII)V

    .line 1407
    return-void
.end method

.method protected injectTime(JJI)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 1281
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1300(JJI)V

    .line 1282
    return-void
.end method

.method protected isAntennaInfoSupported()Z
    .locals 1

    .line 1297
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1700()Z

    move-result v0

    return v0
.end method

.method protected isGeofencingSupported()Z
    .locals 1

    .line 1354
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3100()Z

    move-result v0

    return v0
.end method

.method protected isGnssVisibilityControlSupported()Z
    .locals 1

    .line 1377
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3600()Z

    move-result v0

    return v0
.end method

.method protected isMeasurementCorrectionsSupported()Z
    .locals 1

    .line 1322
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2300()Z

    move-result v0

    return v0
.end method

.method protected isMeasurementSupported()Z
    .locals 1

    .line 1309
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2000()Z

    move-result v0

    return v0
.end method

.method protected isNavigationMessageCollectionSupported()Z
    .locals 1

    .line 1285
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1400()Z

    move-result v0

    return v0
.end method

.method protected isPsdsSupported()Z
    .locals 1

    .line 1402
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$4200()Z

    move-result v0

    return v0
.end method

.method protected isSupported()Z
    .locals 1

    .line 1223
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$100()Z

    move-result v0

    return v0
.end method

.method protected pauseGeofence(I)Z
    .locals 1
    .param p1, "geofenceId"    # I

    .line 1369
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3400(I)Z

    move-result v0

    return v0
.end method

.method protected readNmea([BI)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferSize"    # I

    .line 1262
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1000([BI)I

    move-result v0

    return v0
.end method

.method protected removeGeofence(I)Z
    .locals 1
    .param p1, "geofenceId"    # I

    .line 1373
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3500(I)Z

    move-result v0

    return v0
.end method

.method protected requestPowerStats()V
    .locals 0

    .line 1385
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3800()V

    .line 1386
    return-void
.end method

.method protected resumeGeofence(II)Z
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .line 1365
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3300(II)Z

    move-result v0

    return v0
.end method

.method protected sendNiResponse(II)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .line 1381
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3700(II)V

    .line 1382
    return-void
.end method

.method protected setAgpsReferenceLocationCellId(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I
    .param p4, "lac"    # I
    .param p5, "cid"    # I

    .line 1398
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->access$4100(IIIII)V

    .line 1399
    return-void
.end method

.method protected setAgpsServer(ILjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 1389
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3900(ILjava/lang/String;I)V

    .line 1390
    return-void
.end method

.method protected setAgpsSetId(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "setId"    # Ljava/lang/String;

    .line 1393
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$4000(ILjava/lang/String;)V

    .line 1394
    return-void
.end method

.method protected setPositionMode(IIIIIZ)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "recurrence"    # I
    .param p3, "minInterval"    # I
    .param p4, "preferredAccuracy"    # I
    .param p5, "preferredTime"    # I
    .param p6, "lowPowerMode"    # Z

    .line 1249
    invoke-static/range {p1 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->access$700(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method protected start()Z
    .locals 1

    .line 1239
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$500()Z

    move-result v0

    return v0
.end method

.method protected startAntennaInfoListening()Z
    .locals 1

    .line 1301
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1800()Z

    move-result v0

    return v0
.end method

.method protected startBatch(JZ)Z
    .locals 1
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z

    .line 1342
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2800(JZ)Z

    move-result v0

    return v0
.end method

.method protected startMeasurementCollection(ZZ)Z
    .locals 1
    .param p1, "enableFullTracking"    # Z
    .param p2, "enableCorrVecOutputs"    # Z

    .line 1314
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2100(ZZ)Z

    move-result v0

    return v0
.end method

.method protected startNavigationMessageCollection()Z
    .locals 1

    .line 1289
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1500()Z

    move-result v0

    return v0
.end method

.method protected stop()Z
    .locals 1

    .line 1243
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$600()Z

    move-result v0

    return v0
.end method

.method protected stopAntennaInfoListening()Z
    .locals 1

    .line 1305
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1900()Z

    move-result v0

    return v0
.end method

.method protected stopBatch()V
    .locals 0

    .line 1350
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3000()Z

    .line 1351
    return-void
.end method

.method protected stopMeasurementCollection()Z
    .locals 1

    .line 1318
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2200()Z

    move-result v0

    return v0
.end method

.method protected stopNavigationMessageCollection()Z
    .locals 1

    .line 1293
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1600()Z

    move-result v0

    return v0
.end method
