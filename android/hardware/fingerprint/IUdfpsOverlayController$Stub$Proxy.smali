Add All at END

.method public onAcquired(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    :try_start_0
    const-string v1, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-object v1, p0, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 352
    if-nez v1, :cond_0

    .line 353
    invoke-static {}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->getDefaultImpl()Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    invoke-static {}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->getDefaultImpl()Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onAcquired(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    return-void

    .line 360
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    nop

    .line 362
    return-void

    .line 360
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw p1
.end method