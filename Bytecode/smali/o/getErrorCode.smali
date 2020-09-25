.class public final Lo/getErrorCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getErrorCode$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/getErrorCode;


# instance fields
.field public ICustomTabsCallback:Z

.field public ICustomTabsCallback$Stub:Z

.field public asBinder:J

.field public asInterface:J

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Lo/addCustomAction;

.field public onPostMessage:Z

.field public onRelationshipValidationResult:Lo/getErrorMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lo/getErrorCode$onMessageChannelReady;

    invoke-direct {v0}, Lo/getErrorCode$onMessageChannelReady;-><init>()V

    .line 1453
    new-instance v1, Lo/getErrorCode;

    invoke-direct {v1, v0}, Lo/getErrorCode;-><init>(Lo/getErrorCode$onMessageChannelReady;)V

    .line 45
    sput-object v1, Lo/getErrorCode;->extraCallback:Lo/getErrorCode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lo/addCustomAction;->onNavigationEvent:Lo/addCustomAction;

    iput-object v0, p0, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lo/getErrorCode;->asBinder:J

    .line 67
    iput-wide v0, p0, Lo/getErrorCode;->asInterface:J

    .line 72
    new-instance v0, Lo/getErrorMessage;

    invoke-direct {v0}, Lo/getErrorMessage;-><init>()V

    iput-object v0, p0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    return-void
.end method

.method public constructor <init>(Lo/getErrorCode$onMessageChannelReady;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lo/addCustomAction;->onNavigationEvent:Lo/addCustomAction;

    iput-object v0, p0, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lo/getErrorCode;->asBinder:J

    .line 67
    iput-wide v0, p0, Lo/getErrorCode;->asInterface:J

    .line 72
    new-instance v0, Lo/getErrorMessage;

    invoke-direct {v0}, Lo/getErrorMessage;-><init>()V

    iput-object v0, p0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 84
    iput-boolean v0, p0, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 85
    iget-object v1, p1, Lo/getErrorCode$onMessageChannelReady;->onNavigationEvent:Lo/addCustomAction;

    iput-object v1, p0, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 86
    iget-boolean v1, p1, Lo/getErrorCode$onMessageChannelReady;->onPostMessage:Z

    iput-boolean v1, p0, Lo/getErrorCode;->onPostMessage:Z

    .line 87
    iput-boolean v0, p0, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v0, p1, Lo/getErrorCode$onMessageChannelReady;->extraCallback:Lo/getErrorMessage;

    iput-object v0, p0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 90
    iget-wide v0, p1, Lo/getErrorCode$onMessageChannelReady;->ICustomTabsCallback:J

    iput-wide v0, p0, Lo/getErrorCode;->asBinder:J

    .line 91
    iget-wide v0, p1, Lo/getErrorCode$onMessageChannelReady;->onMessageChannelReady:J

    iput-wide v0, p0, Lo/getErrorCode;->asInterface:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Lo/getErrorCode;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lo/addCustomAction;->onNavigationEvent:Lo/addCustomAction;

    iput-object v0, p0, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lo/getErrorCode;->asBinder:J

    .line 67
    iput-wide v0, p0, Lo/getErrorCode;->asInterface:J

    .line 72
    new-instance v0, Lo/getErrorMessage;

    invoke-direct {v0}, Lo/getErrorMessage;-><init>()V

    iput-object v0, p0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 96
    iget-boolean v0, p1, Lo/getErrorCode;->ICustomTabsCallback:Z

    iput-boolean v0, p0, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 97
    iget-boolean v0, p1, Lo/getErrorCode;->onMessageChannelReady:Z

    iput-boolean v0, p0, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 98
    iget-object v0, p1, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    iput-object v0, p0, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 99
    iget-boolean v0, p1, Lo/getErrorCode;->onPostMessage:Z

    iput-boolean v0, p0, Lo/getErrorCode;->onPostMessage:Z

    .line 100
    iget-boolean v0, p1, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    iput-boolean v0, p0, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    .line 101
    iget-object p1, p1, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    iput-object p1, p0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    check-cast p1, Lo/getErrorCode;

    .line 255
    iget-boolean v1, p0, Lo/getErrorCode;->ICustomTabsCallback:Z

    iget-boolean v2, p1, Lo/getErrorCode;->ICustomTabsCallback:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 256
    :cond_2
    iget-boolean v1, p0, Lo/getErrorCode;->onMessageChannelReady:Z

    iget-boolean v2, p1, Lo/getErrorCode;->onMessageChannelReady:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 257
    :cond_3
    iget-boolean v1, p0, Lo/getErrorCode;->onPostMessage:Z

    iget-boolean v2, p1, Lo/getErrorCode;->onPostMessage:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 258
    :cond_4
    iget-boolean v1, p0, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    iget-boolean v2, p1, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 259
    :cond_5
    iget-wide v1, p0, Lo/getErrorCode;->asBinder:J

    iget-wide v3, p1, Lo/getErrorCode;->asBinder:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    return v0

    .line 260
    :cond_6
    iget-wide v1, p0, Lo/getErrorCode;->asInterface:J

    iget-wide v3, p1, Lo/getErrorCode;->asInterface:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    return v0

    .line 261
    :cond_7
    iget-object v1, p0, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    iget-object v2, p1, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    if-eq v1, v2, :cond_8

    return v0

    .line 262
    :cond_8
    iget-object v0, p0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    iget-object p1, p1, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 267
    iget-object v0, p0, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-boolean v1, p0, Lo/getErrorCode;->ICustomTabsCallback:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-boolean v1, p0, Lo/getErrorCode;->onMessageChannelReady:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-boolean v1, p0, Lo/getErrorCode;->onPostMessage:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-boolean v1, p0, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget-wide v1, p0, Lo/getErrorCode;->asBinder:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-wide v1, p0, Lo/getErrorCode;->asInterface:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-object v1, p0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
