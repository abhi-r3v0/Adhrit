.class public abstract Lo/setStatusBarForegroundResource;
.super Lo/cF;
.source ""

# interfaces
.implements Lo/setStatusBarForeground;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 1
    invoke-direct {p0, v0}, Lo/cF;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 100
    :pswitch_1
    sget-object p1, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCounterTextAppearance;

    .line 101
    invoke-virtual {p0, p1}, Lo/setStatusBarForegroundResource;->onNavigationEvent(Lo/setCounterTextAppearance;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 95
    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 96
    sget-object p4, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/setCounterTextAppearance;

    .line 97
    invoke-virtual {p0, p1, p2}, Lo/setStatusBarForegroundResource;->onNavigationEvent(Landroid/os/Bundle;Lo/setCounterTextAppearance;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 91
    :pswitch_3
    sget-object p1, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCounterTextAppearance;

    .line 92
    invoke-virtual {p0, p1}, Lo/setStatusBarForegroundResource;->ICustomTabsCallback(Lo/setCounterTextAppearance;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 84
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, p4, p2}, Lo/setStatusBarForegroundResource;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 77
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 79
    sget-object v0, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/setCounterTextAppearance;

    .line 80
    invoke-virtual {p0, p1, p4, p2}, Lo/setStatusBarForegroundResource;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/setCounterTextAppearance;)Ljava/util/List;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 69
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p2}, Lo/cS;->onNavigationEvent(Landroid/os/Parcel;)Z

    move-result p2

    .line 73
    invoke-virtual {p0, p1, p4, v0, p2}, Lo/setStatusBarForegroundResource;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 61
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 63
    invoke-static {p2}, Lo/cS;->onNavigationEvent(Landroid/os/Parcel;)Z

    move-result v0

    .line 64
    sget-object v1, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/setCounterTextAppearance;

    .line 65
    invoke-virtual {p0, p1, p4, v0, p2}, Lo/setStatusBarForegroundResource;->extraCallback(Ljava/lang/String;Ljava/lang/String;ZLo/setCounterTextAppearance;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 57
    :pswitch_8
    sget-object p1, Lo/setStartIconVisible;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setStartIconVisible;

    .line 58
    invoke-virtual {p0, p1}, Lo/setStatusBarForegroundResource;->ICustomTabsCallback(Lo/setStartIconVisible;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 52
    :pswitch_9
    sget-object p1, Lo/setStartIconVisible;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setStartIconVisible;

    .line 53
    sget-object p4, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/setCounterTextAppearance;

    .line 54
    invoke-virtual {p0, p1, p2}, Lo/setStatusBarForegroundResource;->onMessageChannelReady(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 47
    :pswitch_a
    sget-object p1, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCounterTextAppearance;

    .line 48
    invoke-virtual {p0, p1}, Lo/setStatusBarForegroundResource;->onMessageChannelReady(Lo/setCounterTextAppearance;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v5}, Lo/setStatusBarForegroundResource;->extraCallback(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 34
    :pswitch_c
    sget-object p1, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/zzir;

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lo/setStatusBarForegroundResource;->onNavigationEvent(Lo/zzir;Ljava/lang/String;)[B

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 28
    :pswitch_d
    sget-object p1, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCounterTextAppearance;

    .line 29
    invoke-static {p2}, Lo/cS;->onNavigationEvent(Landroid/os/Parcel;)Z

    move-result p2

    .line 30
    invoke-virtual {p0, p1, p2}, Lo/setStatusBarForegroundResource;->onPostMessage(Lo/setCounterTextAppearance;Z)Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 24
    :pswitch_e
    sget-object p1, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCounterTextAppearance;

    .line 25
    invoke-virtual {p0, p1}, Lo/setStatusBarForegroundResource;->onPostMessage(Lo/setCounterTextAppearance;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 18
    :pswitch_f
    sget-object p1, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/zzir;

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p4, p2}, Lo/setStatusBarForegroundResource;->extraCallback(Lo/zzir;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 14
    :pswitch_10
    sget-object p1, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCounterTextAppearance;

    .line 15
    invoke-virtual {p0, p1}, Lo/setStatusBarForegroundResource;->extraCallback(Lo/setCounterTextAppearance;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 9
    :pswitch_11
    sget-object p1, Lo/setError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setError;

    .line 10
    sget-object p4, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/setCounterTextAppearance;

    .line 11
    invoke-virtual {p0, p1, p2}, Lo/setStatusBarForegroundResource;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 4
    :pswitch_12
    sget-object p1, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/zzir;

    .line 5
    sget-object p4, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lo/cS;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/setCounterTextAppearance;

    .line 6
    invoke-virtual {p0, p1, p2}, Lo/setStatusBarForegroundResource;->onMessageChannelReady(Lo/zzir;Lo/setCounterTextAppearance;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
