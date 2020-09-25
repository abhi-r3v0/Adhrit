.class public final Lo/t$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/Object;

.field public ICustomTabsCallback$Stub:I

.field public asBinder:J

.field public asInterface:J

.field public extraCallback:J

.field public onMessageChannelReady:Z

.field public onNavigationEvent:J

.field public onPostMessage:Z

.field public onRelationshipValidationResult:J

.field public onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 251
    iget-wide v0, p0, Lo/t$onMessageChannelReady;->onRelationshipValidationResult:J

    return-wide v0
.end method

.method public final extraCallback()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lo/t$onMessageChannelReady;->asInterface:J

    return-wide v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lo/t$onMessageChannelReady;->asInterface:J

    invoke-static {v0, v1}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;JJZZJJIIJ)Lo/t$onMessageChannelReady;
    .locals 0

    .line 191
    iput-object p1, p0, Lo/t$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    .line 192
    iput-wide p2, p0, Lo/t$onMessageChannelReady;->onNavigationEvent:J

    .line 193
    iput-wide p4, p0, Lo/t$onMessageChannelReady;->extraCallback:J

    .line 194
    iput-boolean p6, p0, Lo/t$onMessageChannelReady;->onPostMessage:Z

    .line 195
    iput-boolean p7, p0, Lo/t$onMessageChannelReady;->onMessageChannelReady:Z

    .line 196
    iput-wide p8, p0, Lo/t$onMessageChannelReady;->asInterface:J

    .line 197
    iput-wide p10, p0, Lo/t$onMessageChannelReady;->asBinder:J

    .line 198
    iput p12, p0, Lo/t$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 199
    iput p13, p0, Lo/t$onMessageChannelReady;->onTransact:I

    .line 200
    iput-wide p14, p0, Lo/t$onMessageChannelReady;->onRelationshipValidationResult:J

    return-object p0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lo/t$onMessageChannelReady;->asBinder:J

    invoke-static {v0, v1}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v0

    return-wide v0
.end method
