.class public final Lo/normalizeValue$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/normalizeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/filtersNodes;

.field public asInterface:I

.field public extraCallback:Ljava/net/Socket;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Lo/normalizeValue$extraCallback;

.field public onPostMessage:Lo/fullLimitUpdateChild;

.field onRelationshipValidationResult:Z

.field onTransact:Lo/updateEventSnap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    sget-object v0, Lo/normalizeValue$extraCallback;->warmup:Lo/normalizeValue$extraCallback;

    iput-object v0, p0, Lo/normalizeValue$onPostMessage;->onNavigationEvent:Lo/normalizeValue$extraCallback;

    .line 546
    sget-object v0, Lo/updateEventSnap;->ICustomTabsCallback:Lo/updateEventSnap;

    iput-object v0, p0, Lo/normalizeValue$onPostMessage;->onTransact:Lo/updateEventSnap;

    const/4 v0, 0x1

    .line 555
    iput-boolean v0, p0, Lo/normalizeValue$onPostMessage;->onRelationshipValidationResult:Z

    return-void
.end method
