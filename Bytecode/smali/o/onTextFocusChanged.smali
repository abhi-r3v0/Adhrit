.class public final Lo/onTextFocusChanged;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lo/onActionViewExpanded;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onTextFocusChanged$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 \u00152\u00020\u00012\u00020\u0002:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/net/info/BroadcastReceiverNetworkInfoProvider;",
        "Landroid/content/BroadcastReceiver;",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "()V",
        "networkInfo",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfo;",
        "buildMobileNetworkInfo",
        "context",
        "Landroid/content/Context;",
        "subtype",
        "",
        "buildNetworkInfo",
        "activeNetworkInfo",
        "Landroid/net/NetworkInfo;",
        "getLatestNetworkInfo",
        "onReceive",
        "",
        "intent",
        "Landroid/content/Intent;",
        "register",
        "unregister",
        "Companion",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final asInterface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x5

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x4

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v7, 0x2

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v1, v2, v7

    const/4 v9, 0x3

    .line 120
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v8, v2, v9

    aput-object v10, v2, v4

    const-string v11, "elements"

    .line 115
    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2044
    invoke-static {v2}, Lo/isStopped;->onPostMessage([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 115
    sput-object v2, Lo/onTextFocusChanged;->onMessageChannelReady:Ljava/util/Set;

    const/4 v2, 0x6

    new-array v12, v2, [Ljava/lang/Integer;

    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v3

    aput-object v8, v12, v6

    aput-object v5, v12, v7

    const/4 v5, 0x7

    .line 127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v9

    const/16 v8, 0xb

    .line 128
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v4

    const/16 v8, 0x10

    .line 129
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v0

    .line 123
    invoke-static {v12, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3044
    invoke-static {v12}, Lo/isStopped;->onPostMessage([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 123
    sput-object v8, Lo/onTextFocusChanged;->onNavigationEvent:Ljava/util/Set;

    const/16 v8, 0xa

    new-array v12, v8, [Ljava/lang/Integer;

    aput-object v10, v12, v3

    aput-object v1, v12, v6

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v12, v7

    const/16 v1, 0x8

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v9

    const/16 v10, 0x9

    .line 137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    .line 138
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v0

    const/16 v0, 0xc

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v2

    const/16 v0, 0xe

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v5

    const/16 v0, 0xf

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v1

    const/16 v0, 0x11

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v10

    .line 132
    invoke-static {v12, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4044
    invoke-static {v12}, Lo/isStopped;->onPostMessage([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 132
    sput-object v0, Lo/onTextFocusChanged;->onPostMessage:Ljava/util/Set;

    new-array v0, v9, [Ljava/lang/Integer;

    const/16 v1, 0xd

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x12

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x13

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 145
    invoke-static {v0, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5044
    invoke-static {v0}, Lo/isStopped;->onPostMessage([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 145
    sput-object v0, Lo/onTextFocusChanged;->extraCallback:Ljava/util/Set;

    const/16 v0, 0x14

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7016
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "java.util.Collections.singleton(element)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sput-object v0, Lo/onTextFocusChanged;->asInterface:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v8, Lo/adjustDropDownSizeAndPosition;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    iput-object v8, p0, Lo/onTextFocusChanged;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onMessageChannelReady()Lo/adjustDropDownSizeAndPosition;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/onTextFocusChanged;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition;

    return-object v0
.end method

.method public final onPostMessage(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-virtual {p0, p1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v1

    const-string v2, "received network update"

    invoke-static {v1, v2}, Lo/onQueryTextChange;->onPostMessage(Lo/onQueryTextChange;Ljava/lang/String;)V

    const-string v1, "connectivity"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_f

    .line 1066
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 1070
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 1071
    new-instance v0, Lo/adjustDropDownSizeAndPosition;

    .line 1072
    sget-object v6, Lo/adjustDropDownSizeAndPosition$extraCallback;->extraCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    move-object v5, v0

    .line 1071
    invoke-direct/range {v5 .. v12}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    goto/16 :goto_6

    .line 1074
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_4

    .line 1075
    new-instance v0, Lo/adjustDropDownSizeAndPosition;

    .line 1076
    sget-object v6, Lo/adjustDropDownSizeAndPosition$extraCallback;->onPostMessage:Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    move-object v5, v0

    .line 1075
    invoke-direct/range {v5 .. v12}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    goto/16 :goto_6

    .line 1078
    :cond_4
    sget-object v2, Lo/onTextFocusChanged;->onMessageChannelReady:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1079
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 1089
    sget-object v2, Lo/onTextFocusChanged;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->onNavigationEvent:Lo/adjustDropDownSizeAndPosition$extraCallback;

    :goto_1
    move-object v5, v1

    goto :goto_2

    .line 1090
    :cond_5
    sget-object v2, Lo/onTextFocusChanged;->onPostMessage:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->onMessageChannelReady:Lo/adjustDropDownSizeAndPosition$extraCallback;

    goto :goto_1

    .line 1091
    :cond_6
    sget-object v2, Lo/onTextFocusChanged;->extraCallback:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback$Stub:Lo/adjustDropDownSizeAndPosition$extraCallback;

    goto :goto_1

    .line 1092
    :cond_7
    sget-object v2, Lo/onTextFocusChanged;->asInterface:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->asInterface:Lo/adjustDropDownSizeAndPosition$extraCallback;

    goto :goto_1

    .line 1093
    :cond_8
    sget-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->onTransact:Lo/adjustDropDownSizeAndPosition$extraCallback;

    goto :goto_1

    .line 1096
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_d

    const-string v1, "phone"

    .line 1098
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    move-object v3, v0

    :goto_3
    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_a

    .line 1099
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCarrierIdName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    const-string v0, "Unknown Carrier Name"

    check-cast v0, Ljava/lang/CharSequence;

    :cond_b
    if-eqz v3, :cond_c

    .line 1100
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v1

    move v7, v1

    goto :goto_4

    :cond_c
    const/4 v1, -0x1

    const/4 v7, -0x1

    .line 1101
    :goto_4
    new-instance v1, Lo/adjustDropDownSizeAndPosition;

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    move-object v4, v1

    .line 1101
    invoke-direct/range {v4 .. v11}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    move-object v0, v1

    goto :goto_6

    .line 1107
    :cond_d
    new-instance v0, Lo/adjustDropDownSizeAndPosition;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    goto :goto_6

    .line 1081
    :cond_e
    new-instance v0, Lo/adjustDropDownSizeAndPosition;

    .line 1082
    sget-object v13, Lo/adjustDropDownSizeAndPosition$extraCallback;->asBinder:Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    move-object v12, v0

    .line 1081
    invoke-direct/range {v12 .. v19}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    goto :goto_6

    .line 1067
    :cond_f
    :goto_5
    new-instance v0, Lo/adjustDropDownSizeAndPosition;

    .line 1068
    sget-object v2, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    move-object v1, v0

    .line 1067
    invoke-direct/range {v1 .. v8}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    :goto_6
    move-object/from16 v1, p0

    .line 37
    iput-object v0, v1, Lo/onTextFocusChanged;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition;

    return-void
.end method
