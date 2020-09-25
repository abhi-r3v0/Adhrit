.class final Lo/Campaign$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPivotX;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Campaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPivotX<",
        "Lo/WorkDatabase<",
        "TIMAGE;>;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/Campaign$onMessageChannelReady;

.field private synthetic asBinder:Lo/Campaign;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Ljava/lang/Object;

.field private synthetic onNavigationEvent:Ljava/lang/Object;

.field private synthetic onPostMessage:Lo/getMinFrame;


# direct methods
.method constructor <init>(Lo/Campaign;Lo/getMinFrame;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lo/Campaign$onMessageChannelReady;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lo/Campaign$3;->asBinder:Lo/Campaign;

    iput-object p2, p0, Lo/Campaign$3;->onPostMessage:Lo/getMinFrame;

    iput-object p3, p0, Lo/Campaign$3;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/Campaign$3;->onMessageChannelReady:Ljava/lang/Object;

    iput-object p5, p0, Lo/Campaign$3;->onNavigationEvent:Ljava/lang/Object;

    iput-object p6, p0, Lo/Campaign$3;->ICustomTabsCallback:Lo/Campaign$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 1421
    iget-object v0, p0, Lo/Campaign$3;->asBinder:Lo/Campaign;

    iget-object v1, p0, Lo/Campaign$3;->onPostMessage:Lo/getMinFrame;

    iget-object v2, p0, Lo/Campaign$3;->extraCallback:Ljava/lang/String;

    iget-object v3, p0, Lo/Campaign$3;->onMessageChannelReady:Ljava/lang/Object;

    iget-object v4, p0, Lo/Campaign$3;->onNavigationEvent:Ljava/lang/Object;

    iget-object v5, p0, Lo/Campaign$3;->ICustomTabsCallback:Lo/Campaign$onMessageChannelReady;

    invoke-virtual/range {v0 .. v5}, Lo/Campaign;->ICustomTabsCallback(Lo/getMinFrame;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lo/Campaign$onMessageChannelReady;)Lo/WorkDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1119
    new-instance v0, Lo/setPivotY$onMessageChannelReady;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;B)V

    .line 427
    iget-object v1, p0, Lo/Campaign$3;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
