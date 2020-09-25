.class final Lo/UpdateAppSpiCall$4;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/UpdateAppSpiCall;

.field private synthetic extraCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/UpdateAppSpiCall;Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lo/UpdateAppSpiCall$4;->ICustomTabsCallback:Lo/UpdateAppSpiCall;

    iput-object p2, p0, Lo/UpdateAppSpiCall$4;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 2

    .line 1406
    iget-object v0, p0, Lo/UpdateAppSpiCall$4;->ICustomTabsCallback:Lo/UpdateAppSpiCall;

    iget-object v1, p0, Lo/UpdateAppSpiCall$4;->extraCallback:Ljava/lang/String;

    .line 2028
    invoke-virtual {v0, v1}, Lo/UpdateAppSpiCall;->onMessageChannelReady(Ljava/lang/String;)Lo/UpdateAppSpiCall$extraCallback;

    move-result-object v0

    .line 1407
    invoke-virtual {v0}, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady()Ljava/lang/Number;

    move-result-object v0

    .line 1408
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
