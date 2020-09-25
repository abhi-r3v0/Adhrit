.class final Lo/onStop$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onStop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private static onRelationshipValidationResult:Lo/onStop$extraCallback;


# instance fields
.field public ICustomTabsCallback:I

.field public asBinder:I

.field public asInterface:Ljava/lang/Object;

.field public extraCallback:I

.field public onMessageChannelReady:I

.field onNavigationEvent:Lo/onStop$extraCallback;

.field public onPostMessage:I

.field public onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/onStop$extraCallback;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(IILjava/lang/Object;)Lo/onStop$extraCallback;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v6, p2

    .line 229
    invoke-static/range {v0 .. v6}, Lo/onStop$extraCallback;->onMessageChannelReady(IIIIIILjava/lang/Object;)Lo/onStop$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method static onMessageChannelReady(III)Lo/onStop$extraCallback;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .line 225
    invoke-static/range {v0 .. v6}, Lo/onStop$extraCallback;->onMessageChannelReady(IIIIIILjava/lang/Object;)Lo/onStop$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method static onMessageChannelReady(IIIIIILjava/lang/Object;)Lo/onStop$extraCallback;
    .locals 3

    .line 204
    sget-object v0, Lo/onStop$extraCallback;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Lo/onStop$extraCallback;->onRelationshipValidationResult:Lo/onStop$extraCallback;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lo/onStop$extraCallback;

    invoke-direct {v1}, Lo/onStop$extraCallback;-><init>()V

    goto :goto_0

    .line 209
    :cond_0
    sget-object v1, Lo/onStop$extraCallback;->onRelationshipValidationResult:Lo/onStop$extraCallback;

    .line 210
    sget-object v2, Lo/onStop$extraCallback;->onRelationshipValidationResult:Lo/onStop$extraCallback;

    iget-object v2, v2, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    sput-object v2, Lo/onStop$extraCallback;->onRelationshipValidationResult:Lo/onStop$extraCallback;

    const/4 v2, 0x0

    .line 211
    iput-object v2, v1, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    .line 213
    :goto_0
    iput p0, v1, Lo/onStop$extraCallback;->ICustomTabsCallback:I

    .line 214
    iput p1, v1, Lo/onStop$extraCallback;->onPostMessage:I

    .line 215
    iput p2, v1, Lo/onStop$extraCallback;->extraCallback:I

    .line 216
    iput p3, v1, Lo/onStop$extraCallback;->onMessageChannelReady:I

    .line 217
    iput p4, v1, Lo/onStop$extraCallback;->asBinder:I

    .line 218
    iput p5, v1, Lo/onStop$extraCallback;->onTransact:I

    .line 219
    iput-object p6, v1, Lo/onStop$extraCallback;->asInterface:Ljava/lang/Object;

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 221
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 2

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    const/4 v1, 0x0

    .line 192
    iput v1, p0, Lo/onStop$extraCallback;->onTransact:I

    iput v1, p0, Lo/onStop$extraCallback;->asBinder:I

    iput v1, p0, Lo/onStop$extraCallback;->onMessageChannelReady:I

    iput v1, p0, Lo/onStop$extraCallback;->extraCallback:I

    iput v1, p0, Lo/onStop$extraCallback;->onPostMessage:I

    iput v1, p0, Lo/onStop$extraCallback;->ICustomTabsCallback:I

    .line 193
    iput-object v0, p0, Lo/onStop$extraCallback;->asInterface:Ljava/lang/Object;

    .line 194
    sget-object v0, Lo/onStop$extraCallback;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    sget-object v1, Lo/onStop$extraCallback;->onRelationshipValidationResult:Lo/onStop$extraCallback;

    if-eqz v1, :cond_0

    .line 196
    sget-object v1, Lo/onStop$extraCallback;->onRelationshipValidationResult:Lo/onStop$extraCallback;

    iput-object v1, p0, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    .line 198
    :cond_0
    sput-object p0, Lo/onStop$extraCallback;->onRelationshipValidationResult:Lo/onStop$extraCallback;

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
