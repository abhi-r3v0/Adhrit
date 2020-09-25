.class final Lo/UpdateAppSpiCall$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getJsonObjectFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpdateAppSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getJsonObjectFrom<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lo/UpdateAppSpiCall;


# direct methods
.method constructor <init>(Lo/UpdateAppSpiCall;Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lo/UpdateAppSpiCall$3;->onNavigationEvent:Lo/UpdateAppSpiCall;

    iput-object p2, p0, Lo/UpdateAppSpiCall$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 2

    .line 1334
    iget-object v0, p0, Lo/UpdateAppSpiCall$3;->onNavigationEvent:Lo/UpdateAppSpiCall;

    iget-object v1, p0, Lo/UpdateAppSpiCall$3;->ICustomTabsCallback:Ljava/lang/String;

    .line 2028
    invoke-virtual {v0, v1}, Lo/UpdateAppSpiCall;->onMessageChannelReady(Ljava/lang/String;)Lo/UpdateAppSpiCall$extraCallback;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady()Ljava/lang/Number;

    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
