.class final Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildInstanceIdentifierChanged$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getSessionData;

.field private ICustomTabsCallback$Stub:I

.field private synthetic asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

.field private final extraCallback:Lo/SettingsJsonConstants;

.field private onMessageChannelReady:J

.field private final onNavigationEvent:J

.field private onPostMessage:J


# direct methods
.method public constructor <init>(Lo/buildInstanceIdentifierChanged$onTransact;Landroid/os/Looper;)V
    .locals 2

    .line 377
    iput-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 378
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 379
    iput-object p2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    .line 380
    iget-object p2, p1, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object p2, p2, Lo/buildInstanceIdentifierChanged;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {p2}, Lo/getQueryParamsFor;->onMessageChannelReady(Landroid/content/Context;)Lo/getQueryParamsFor;

    move-result-object p2

    .line 1345
    iput-object p2, p1, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 1386
    new-instance p2, Lo/SettingsJsonConstants;

    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v0, v0, Lo/buildInstanceIdentifierChanged;->onMessageChannelReady:Landroid/content/Context;

    iget-object v1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    invoke-direct {p2, v0, v1}, Lo/SettingsJsonConstants;-><init>(Landroid/content/Context;Lo/SessionSettingsData;)V

    .line 381
    iput-object p2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback:Lo/SettingsJsonConstants;

    .line 382
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object p1, p1, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    .line 2335
    iget p1, p1, Lo/SessionSettingsData;->onMessageChannelReady:I

    int-to-long p1, p1

    .line 382
    iput-wide p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onNavigationEvent:J

    return-void
.end method

.method private ICustomTabsCallback()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "$google_play_services"

    .line 635
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "mp_lib"

    const-string v3, "android"

    .line 637
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "$lib_version"

    const-string v3, "5.8.4"

    .line 638
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "$os"

    const-string v3, "Android"

    .line 641
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "UNKNOWN"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_0
    const-string v4, "$os_version"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    :goto_1
    const-string v4, "$manufacturer"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    :goto_2
    const-string v4, "$brand"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_3
    const-string v2, "$model"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x1

    .line 26001
    :try_start_0
    sget-object v3, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    .line 650
    iget-object v4, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v4, v4, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v4, v4, Lo/buildInstanceIdentifierChanged;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v2, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    goto :goto_4

    :cond_4
    const-string v3, "invalid"

    .line 665
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_5
    const-string v3, "disabled"

    .line 662
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    const-string v3, "out of date"

    .line 659
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_7
    const-string v3, "missing"

    .line 656
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_8
    const-string v3, "available"

    .line 653
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_0
    :try_start_1
    const-string v3, "not configured"

    .line 671
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const-string v3, "not included"

    .line 675
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    :goto_4
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 26345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 27105
    iget-object v0, v0, Lo/getQueryParamsFor;->extraCallback:Landroid/util/DisplayMetrics;

    .line 679
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const-string v4, "$screen_dpi"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 680
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v4, "$screen_height"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 681
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v3, "$screen_width"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 683
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 27345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 28095
    iget-object v0, v0, Lo/getQueryParamsFor;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v3, "$app_version"

    .line 685
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$app_version_string"

    .line 686
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    :cond_9
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 28345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 29097
    iget-object v0, v0, Lo/getQueryParamsFor;->onRelationshipValidationResult:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const-string v3, "$app_release"

    .line 691
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$app_build_number"

    .line 692
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 695
    :cond_a
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 29345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 30101
    iget-object v0, v0, Lo/getQueryParamsFor;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 695
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 697
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "$has_nfc"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 699
    :cond_b
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 30345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 31103
    iget-object v0, v0, Lo/getQueryParamsFor;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 699
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 701
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "$has_telephone"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 703
    :cond_c
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 31345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 32159
    iget-object v0, v0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    .line 32161
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_d
    move-object v0, v4

    :goto_5
    if-eqz v0, :cond_e

    .line 704
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "$carrier"

    .line 705
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    :cond_e
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 32345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 33172
    iget-object v5, v0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_10

    .line 33173
    iget-object v0, v0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 33174
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 33175
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v2, :cond_f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    :cond_10
    move-object v0, v4

    :goto_7
    if-eqz v0, :cond_11

    .line 709
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "$wifi"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 711
    :cond_11
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 33345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 711
    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v2, v2, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v2, v2, Lo/buildInstanceIdentifierChanged;->onMessageChannelReady:Landroid/content/Context;

    .line 34110
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 34111
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_15

    if-nez v2, :cond_12

    goto/16 :goto_9

    :cond_12
    const-string v6, "android.permission.READ_PHONE_STATE"

    .line 34117
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_13

    const-string v0, "MixpanelAPI.SysInfo"

    const-string v2, "Permission READ_PHONE_STATE not granted. Property $radio will not be available."

    .line 34118
    invoke-static {v0, v2}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 34122
    :cond_13
    iget-object v0, v0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    .line 34125
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_14

    .line 34126
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    goto :goto_8

    .line 34128
    :cond_14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :goto_8
    packed-switch v0, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    const-string v4, "HSPA+"

    goto :goto_9

    :pswitch_1
    const-string v4, "eHRPD"

    goto :goto_9

    :pswitch_2
    const-string v4, "LTE"

    goto :goto_9

    :pswitch_3
    const-string v4, "EVDO rev. B"

    goto :goto_9

    :pswitch_4
    const-string v4, "iDen"

    goto :goto_9

    :pswitch_5
    const-string v4, "HSPA"

    goto :goto_9

    :pswitch_6
    const-string v4, "HSUPA"

    goto :goto_9

    :pswitch_7
    const-string v4, "HSDPA"

    goto :goto_9

    :pswitch_8
    const-string v4, "1xRTT"

    goto :goto_9

    :pswitch_9
    const-string v4, "EVDO rev. A"

    goto :goto_9

    :pswitch_a
    const-string v4, "EVDO rev. 0"

    goto :goto_9

    :pswitch_b
    const-string v4, "CDMA"

    goto :goto_9

    :pswitch_c
    const-string v4, "UMTS"

    goto :goto_9

    :pswitch_d
    const-string v4, "EDGE"

    goto :goto_9

    :pswitch_e
    const-string v4, "GPRS"

    goto :goto_9

    :pswitch_f
    const-string v4, "Unknown"

    :cond_15
    :goto_9
    if-eqz v4, :cond_16

    const-string v0, "$radio"

    .line 713
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    :cond_16
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 34345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 715
    invoke-virtual {v0}, Lo/getQueryParamsFor;->onPostMessage()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v2, "$bluetooth_enabled"

    .line 717
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    :cond_17
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 35345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage:Lo/getQueryParamsFor;

    .line 36206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_18

    iget-object v2, v0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    .line 36207
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v0, "ble"

    goto :goto_a

    .line 36209
    :cond_18
    iget-object v0, v0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "classic"

    goto :goto_a

    :cond_19
    const-string v0, "none"

    :goto_a
    const-string v2, "$bluetooth_version"

    .line 721
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch
.end method

.method private ICustomTabsCallback(Lo/buildInstanceIdentifierChanged$onPostMessage;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 727
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37300
    iget-object v1, p1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;->onMessageChannelReady:Lorg/json/JSONObject;

    .line 729
    invoke-direct {p0}, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback()Lorg/json/JSONObject;

    move-result-object v2

    .line 37326
    iget-object v3, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    const-string v4, "token"

    .line 730
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 734
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 38199
    :cond_0
    iget-object v1, p1, Lo/buildInstanceIdentifierChanged$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "event"

    .line 737
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "properties"

    .line 738
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38207
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$onPostMessage;->onNavigationEvent:Lorg/json/JSONObject;

    const-string v1, "$mp_metadata"

    .line 739
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private extraCallback(Lo/getSessionData;Ljava/lang/String;)V
    .locals 3

    .line 535
    invoke-static {}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent()Lcom/mixpanel/android/util/RemoteService;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged;->onMessageChannelReady:Landroid/content/Context;

    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v2, v2, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v2, v2, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    invoke-virtual {v2}, Lo/SessionSettingsData;->onPostMessage()Lo/onPostMessage$extraCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/util/RemoteService;->onNavigationEvent(Landroid/content/Context;Lo/onPostMessage$extraCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Not flushing data to Mixpanel because the device is not connected to the internet."

    .line 537
    invoke-static {p1}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    .line 541
    :cond_0
    sget-object v0, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    iget-object v1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    .line 22374
    iget-object v1, v1, Lo/SessionSettingsData;->getInterfaceDescriptor:Ljava/lang/String;

    .line 541
    invoke-direct {p0, p1, p2, v0, v1}, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onNavigationEvent(Lo/getSessionData;Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    .line 542
    sget-object v0, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    iget-object v1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    .line 22387
    iget-object v1, v1, Lo/SessionSettingsData;->ICustomTabsService:Ljava/lang/String;

    .line 542
    invoke-direct {p0, p1, p2, v0, v1}, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onNavigationEvent(Lo/getSessionData;Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    .line 543
    sget-object v0, Lo/getSessionData$onNavigationEvent;->onPostMessage:Lo/getSessionData$onNavigationEvent;

    iget-object v1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v1, v1, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    .line 22400
    iget-object v1, v1, Lo/SessionSettingsData;->updateVisuals:Ljava/lang/String;

    .line 543
    invoke-direct {p0, p1, p2, v0, v1}, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onNavigationEvent(Lo/getSessionData;Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    return-void
.end method

.method private onNavigationEvent(Lo/getSessionData;Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "MixpanelAPI.Messages"

    const-string v7, "Cannot post message to "

    const-string v8, "."

    .line 547
    invoke-static {}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent()Lcom/mixpanel/android/util/RemoteService;

    move-result-object v9

    .line 548
    iget-object v0, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback:Lo/SettingsJsonConstants;

    .line 23355
    iget-object v0, v0, Lo/SettingsJsonConstants;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/parseSettingsJson;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 24231
    iget-object v0, v0, Lo/parseSettingsJson;->onNavigationEvent:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 553
    :goto_1
    invoke-virtual {v2, v4, v3, v12}, Lo/getSessionData;->onMessageChannelReady(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    if-eqz v0, :cond_2

    .line 556
    aget-object v13, v0, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    :cond_2
    :goto_2
    if-eqz v0, :cond_8

    .line 559
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-lez v15, :cond_8

    .line 560
    aget-object v15, v0, v11

    .line 561
    aget-object v0, v0, v10

    .line 563
    invoke-static {v0}, Lo/StackTraceTrimmingStrategy;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 564
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v11, "data"

    .line 565
    invoke-interface {v14, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-boolean v10, Lo/SessionSettingsData;->onPostMessage:Z

    if-eqz v10, :cond_3

    const-string v10, "verbose"

    const-string v11, "1"

    .line 567
    invoke-interface {v14, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_3
    :try_start_0
    iget-object v10, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v10, v10, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v10, v10, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    invoke-virtual {v10}, Lo/SessionSettingsData;->extraCallback()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v10

    .line 574
    invoke-interface {v9, v5, v14, v10}, Lcom/mixpanel/android/util/RemoteService;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;Ljavax/net/ssl/SSLSocketFactory;)[B

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v10, :cond_4

    .line 577
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Response was null, unexpected failure posting to "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_6

    .line 582
    :cond_4
    :try_start_2
    new-instance v11, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v11, v10, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 586
    :try_start_3
    iget v10, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback$Stub:I

    if-lez v10, :cond_5

    const/4 v10, 0x0

    .line 587
    iput v10, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback$Stub:I

    const/4 v14, 0x2

    .line 588
    invoke-virtual {v1, v14, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 591
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v10, "Successfully posted to "

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": \n"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string v0, "Response was "

    .line 592
    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_7

    :catch_2
    move-exception v0

    .line 584
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "UTF not supported on this platform?"

    invoke-direct {v10, v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception v0

    .line 606
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lo/buildInstanceIdentifierChanged;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v0

    .line 603
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lo/buildInstanceIdentifierChanged;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v0

    .line 599
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lo/buildInstanceIdentifierChanged;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25033
    iget v0, v0, Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;->onMessageChannelReady:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    .line 601
    iput-wide v10, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onPostMessage:J

    :goto_4
    const/4 v10, 0x0

    goto :goto_7

    :catch_6
    move-exception v0

    const/4 v10, 0x1

    .line 597
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Cannot interpret "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " as a URL."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_7
    move-exception v0

    const/4 v10, 0x1

    .line 595
    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Out of memory when posting to "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    if-eqz v10, :cond_7

    const-string v0, "Not retrying this batch of events, deleting them from DB."

    .line 611
    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v2, v15, v4, v3, v12}, Lo/getSessionData;->onMessageChannelReady(Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Ljava/lang/String;Z)V

    .line 626
    invoke-virtual {v2, v4, v3, v12}, Lo/getSessionData;->onMessageChannelReady(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x2

    if-eqz v0, :cond_6

    .line 628
    aget-object v11, v0, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    move-object v13, v11

    :cond_6
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x2

    goto/16 :goto_2

    :cond_7
    const/4 v10, 0x2

    .line 614
    invoke-virtual {v1, v10, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 615
    iget v0, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback$Stub:I

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long v4, v4, v6

    iget-wide v6, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onPostMessage:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onPostMessage:J

    const-wide/32 v6, 0x927c0

    .line 616
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onPostMessage:J

    .line 617
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    .line 618
    iput v2, v0, Landroid/os/Message;->what:I

    .line 619
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 620
    iget-wide v2, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onPostMessage:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 621
    iget v0, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback$Stub:I

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Retrying this batch of events in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v1, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onPostMessage:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 391
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v0, v0, Lo/buildInstanceIdentifierChanged;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->onMessageChannelReady(Landroid/content/Context;)Lo/getSessionData;

    move-result-object v0

    iput-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v3, v3, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v3, v3, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    .line 2345
    iget-wide v3, v3, Lo/SessionSettingsData;->onNavigationEvent:J

    sub-long/2addr v1, v3

    .line 393
    sget-object v3, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    invoke-virtual {v0, v1, v2, v3}, Lo/getSessionData;->onPostMessage(JLo/getSessionData$onNavigationEvent;)V

    .line 394
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object v3, v3, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object v3, v3, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    .line 3345
    iget-wide v3, v3, Lo/SessionSettingsData;->onNavigationEvent:J

    sub-long/2addr v1, v3

    .line 394
    sget-object v3, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    invoke-virtual {v0, v1, v2, v3}, Lo/getSessionData;->onPostMessage(JLo/getSessionData$onNavigationEvent;)V

    :cond_0
    const/4 v0, -0x3

    const/4 v1, 0x0

    .line 401
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 402
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/buildInstanceIdentifierChanged$onRelationshipValidationResult;

    .line 4300
    iget-object v0, p1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;->onMessageChannelReady:Lorg/json/JSONObject;

    const-string v2, "$distinct_id"

    .line 4230
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_1

    .line 403
    sget-object v0, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    goto :goto_0

    :cond_1
    sget-object v0, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    :goto_0
    const-string v2, "Queuing people record for sending later"

    .line 405
    invoke-static {v2}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 4326
    iget-object v2, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 408
    iget-object v6, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    .line 5300
    iget-object v7, p1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;->onMessageChannelReady:Lorg/json/JSONObject;

    .line 408
    invoke-virtual {v6, v7, v2, v0, v4}, Lo/getSessionData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Z)I

    move-result v0

    .line 6300
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;->onMessageChannelReady:Lorg/json/JSONObject;

    const-string v6, "$distinct_id"

    .line 6230
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 410
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    .line 411
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/buildInstanceIdentifierChanged$onNavigationEvent;

    const-string v0, "Queuing group record for sending later"

    .line 413
    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 6326
    iget-object v2, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    .line 7300
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;->onMessageChannelReady:Lorg/json/JSONObject;

    .line 416
    sget-object v6, Lo/getSessionData$onNavigationEvent;->onPostMessage:Lo/getSessionData$onNavigationEvent;

    invoke-virtual {v0, p1, v2, v6, v4}, Lo/getSessionData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Z)I

    move-result v0

    goto/16 :goto_5

    .line 417
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_6

    .line 418
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/buildInstanceIdentifierChanged$onPostMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    .line 420
    :try_start_1
    invoke-direct {p0, p1}, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback(Lo/buildInstanceIdentifierChanged$onPostMessage;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "Queuing event for sending later"

    .line 421
    invoke-static {v4}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 7326
    iget-object v4, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 425
    :try_start_2
    iget-object v6, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback:Lo/SettingsJsonConstants;

    .line 7355
    iget-object v6, v6, Lo/SettingsJsonConstants;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/parseSettingsJson;

    if-eqz v6, :cond_5

    .line 8211
    iget-boolean v7, p1, Lo/buildInstanceIdentifierChanged$onPostMessage;->extraCallback:Z

    if-eqz v7, :cond_5

    .line 9231
    iget-object v7, v6, Lo/parseSettingsJson;->onNavigationEvent:Ljava/lang/Boolean;

    if-nez v7, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    .line 10231
    :cond_4
    iget-object v6, v6, Lo/parseSettingsJson;->onNavigationEvent:Ljava/lang/Boolean;

    .line 8235
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_1
    if-nez v6, :cond_5

    return-void

    .line 429
    :cond_5
    iget-object v6, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    sget-object v7, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    .line 11211
    iget-boolean v8, p1, Lo/buildInstanceIdentifierChanged$onPostMessage;->extraCallback:Z

    .line 429
    invoke-virtual {v6, v2, v4, v7, v8}, Lo/getSessionData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Z)I

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v4, v1

    :goto_2
    :try_start_3
    const-string v6, "MixpanelAPI.Messages"

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception tracking event "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12199
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 431
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move-object v2, v4

    goto/16 :goto_5

    .line 433
    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_7

    .line 434
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/buildInstanceIdentifierChanged$asInterface;

    .line 12257
    iget-object v0, p1, Lo/buildInstanceIdentifierChanged$asInterface;->extraCallback:Ljava/lang/String;

    .line 12326
    iget-object v2, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 437
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    invoke-virtual {p1, v2, v0}, Lo/getSessionData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_5

    .line 438
    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    if-ne v2, v6, :cond_8

    .line 439
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;

    .line 13326
    iget-object v2, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 441
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    sget-object v4, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    invoke-virtual {p1, v4, v2}, Lo/getSessionData;->ICustomTabsCallback(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 442
    :cond_8
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    if-ne v2, v6, :cond_9

    .line 443
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback$Stub;

    .line 444
    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    .line 14316
    iget-object v4, p1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    .line 14326
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 444
    invoke-virtual {v2, v4, p1}, Lo/getSessionData;->onPostMessage(Ljava/util/Map;Ljava/lang/String;)I

    move-result p1

    const-string v2, "MixpanelAPI.Messages"

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " stored events were updated with new properties."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 446
    :cond_9
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_b

    const-string v2, "Flushing queue due to scheduled or forced flush"

    .line 447
    invoke-static {v2}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-static {v2}, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage(Lo/buildInstanceIdentifierChanged$onTransact;)V

    .line 449
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 450
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_a

    const/4 v4, 0x1

    .line 451
    :cond_a
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    invoke-direct {p0, p1, v2}, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback(Lo/getSessionData;Ljava/lang/String;)V

    if-eqz v4, :cond_10

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onMessageChannelReady:J
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    cmp-long p1, v6, v8

    if-ltz p1, :cond_10

    .line 454
    :try_start_4
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback:Lo/SettingsJsonConstants;

    invoke-static {}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent()Lcom/mixpanel/android/util/RemoteService;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lo/SettingsJsonConstants;->onPostMessage(Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)V
    :try_end_4
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_5

    :catch_2
    move-exception p1

    .line 456
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 15033
    iget p1, p1, Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;->onMessageChannelReady:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v8, p1

    add-long/2addr v6, v8

    .line 456
    iput-wide v6, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onMessageChannelReady:J

    goto/16 :goto_5

    .line 459
    :cond_b
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xc

    if-ne v2, v4, :cond_c

    const-string v2, "Installing a check for in-app notifications"

    .line 460
    invoke-static {v2}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 461
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/parseSettingsJson;

    .line 462
    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback:Lo/SettingsJsonConstants;

    .line 15079
    iget-object v2, v2, Lo/SettingsJsonConstants;->onNavigationEvent:Ljava/util/Map;

    .line 16039
    iget-object v4, p1, Lo/parseSettingsJson;->ICustomTabsCallback:Ljava/lang/String;

    .line 15079
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onMessageChannelReady:J
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    cmp-long v2, v6, v8

    if-ltz v2, :cond_f

    .line 465
    :try_start_6
    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback:Lo/SettingsJsonConstants;

    .line 17039
    iget-object p1, p1, Lo/parseSettingsJson;->ICustomTabsCallback:Ljava/lang/String;

    .line 465
    invoke-static {}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent()Lcom/mixpanel/android/util/RemoteService;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lo/SettingsJsonConstants;->onPostMessage(Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)V
    :try_end_6
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_4

    :catch_3
    move-exception p1

    .line 467
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 18033
    iget p1, p1, Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;->onMessageChannelReady:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v8, p1

    add-long/2addr v6, v8

    .line 467
    iput-wide v6, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onMessageChannelReady:J

    goto/16 :goto_4

    .line 470
    :cond_c
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_d

    .line 471
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;

    .line 18326
    iget-object v2, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 473
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    sget-object v4, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    invoke-virtual {p1, v4, v2}, Lo/getSessionData;->ICustomTabsCallback(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    sget-object v4, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    invoke-virtual {p1, v4, v2}, Lo/getSessionData;->ICustomTabsCallback(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    sget-object v4, Lo/getSessionData$onNavigationEvent;->onPostMessage:Lo/getSessionData$onNavigationEvent;

    invoke-virtual {p1, v4, v2}, Lo/getSessionData;->ICustomTabsCallback(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    .line 476
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    sget-object v4, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    invoke-virtual {p1, v4, v2}, Lo/getSessionData;->ICustomTabsCallback(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    goto :goto_5

    .line 477
    :cond_d
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_e

    const-string p1, "MixpanelAPI.Messages"

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Worker received a hard kill. Dumping all events and force-killing. Thread id "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 18345
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$onTransact;->onMessageChannelReady:Ljava/lang/Object;

    .line 479
    monitor-enter p1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 480
    :try_start_8
    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    .line 18597
    iget-object v2, v2, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 19117
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 19118
    iget-object v2, v2, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 481
    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 19345
    iput-object v1, v2, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback:Landroid/os/Handler;

    .line 482
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 483
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit p1

    throw v0

    :cond_e
    const-string v2, "MixpanelAPI.Messages"

    const-string v4, "Unexpected message received by Mixpanel worker: "

    .line 485
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_4
    move-object v2, v1

    .line 489
    :cond_10
    :goto_5
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    iget-object p1, p1, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    .line 20330
    iget p1, p1, Lo/SessionSettingsData;->ICustomTabsCallback:I

    if-ge v0, p1, :cond_11

    const/4 p1, -0x2

    if-ne v0, p1, :cond_12

    .line 489
    :cond_11
    iget p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback$Stub:I

    if-gtz p1, :cond_12

    if-eqz v2, :cond_12

    .line 490
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Flushing queue due to bulk upload limit ("

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") for project "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-static {p1}, Lo/buildInstanceIdentifierChanged$onTransact;->onPostMessage(Lo/buildInstanceIdentifierChanged$onTransact;)V

    .line 492
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->ICustomTabsCallback:Lo/getSessionData;

    invoke-direct {p0, p1, v2}, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback(Lo/getSessionData;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onMessageChannelReady:J
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_13

    .line 495
    :try_start_a
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->extraCallback:Lo/SettingsJsonConstants;

    invoke-static {}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent()Lcom/mixpanel/android/util/RemoteService;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lo/SettingsJsonConstants;->onPostMessage(Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)V
    :try_end_a
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    return-void

    :catch_4
    move-exception p1

    .line 497
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 21033
    iget p1, p1, Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;->onMessageChannelReady:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 497
    iput-wide v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onMessageChannelReady:J

    return-void

    :cond_12
    if-lez v0, :cond_13

    .line 500
    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Queue depth "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - Adding flush in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onNavigationEvent:J

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 508
    iget-wide v6, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onNavigationEvent:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-ltz p1, :cond_13

    .line 509
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 510
    iput v3, p1, Landroid/os/Message;->what:I

    .line 511
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 512
    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 513
    iget-wide v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->onNavigationEvent:J

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5

    :cond_13
    return-void

    :catch_5
    move-exception p1

    const-string v0, "MixpanelAPI.Messages"

    const-string v2, "Worker threw an unhandled exception"

    .line 517
    invoke-static {v0, v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 21345
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged$onTransact;->onMessageChannelReady:Ljava/lang/Object;

    .line 518
    monitor-enter v0

    .line 519
    :try_start_c
    iget-object v2, p0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;->asInterface:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 22345
    iput-object v1, v2, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback:Landroid/os/Handler;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 521
    :try_start_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    const-string v1, "MixpanelAPI.Messages"

    const-string v2, "Mixpanel will not process any more analytics messages"

    .line 522
    invoke-static {v1, v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    :catch_6
    move-exception p1

    :try_start_e
    const-string v1, "MixpanelAPI.Messages"

    const-string v2, "Could not halt looper"

    .line 524
    invoke-static {v1, v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    :goto_6
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method
