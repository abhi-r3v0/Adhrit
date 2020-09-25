.class final Lo/Report$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Report$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/SessionProtobufHelper;


# direct methods
.method constructor <init>(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/Report$5;->extraCallback:Lo/SessionProtobufHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)B
    .locals 1

    .line 118
    iget-object v0, p0, Lo/Report$5;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1}, Lo/SessionProtobufHelper;->onNavigationEvent(I)B

    move-result p1

    return p1
.end method

.method public final onPostMessage()I
    .locals 1

    .line 113
    iget-object v0, p0, Lo/Report$5;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    return v0
.end method
