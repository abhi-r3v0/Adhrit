.class public final Lo/MediaDescriptionCompatApi23$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaDescriptionCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Z

.field private onMessageChannelReady:I

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 115
    iput p2, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->onPostMessage:I

    .line 116
    iput-boolean p3, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->extraCallback:Z

    .line 117
    iput-object p4, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 118
    iput p5, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->onMessageChannelReady:I

    .line 119
    iput p6, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->onRelationshipValidationResult:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->extraCallback:Z

    return v0
.end method

.method public final asBinder()I
    .locals 1

    .line 143
    iget v0, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->onRelationshipValidationResult:I

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 127
    iget v0, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->onPostMessage:I

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 139
    iget v0, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->onMessageChannelReady:I

    return v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/MediaDescriptionCompatApi23$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method
