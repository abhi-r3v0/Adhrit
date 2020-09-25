.class public abstract Lo/removeAllTabs$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeAllTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeAllTabs$onPostMessage$extraCallback;,
        Lo/removeAllTabs$onPostMessage$onNavigationEvent;,
        Lo/removeAllTabs$onPostMessage$onMessageChannelReady;,
        Lo/removeAllTabs$onPostMessage$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState;",
        "",
        "()V",
        "InstrumentList",
        "Loading",
        "SetupUpi",
        "ShowInstrumentFarm",
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState$ShowInstrumentFarm;",
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState$InstrumentList;",
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState$SetupUpi;",
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState$Loading;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lo/removeAllTabs$onPostMessage;-><init>()V

    return-void
.end method
