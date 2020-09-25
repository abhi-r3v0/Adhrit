.class final Lo/ӏ$onPostMessage;
.super Lo/onBecameBackground$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ӏ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field final onMessageChannelReady:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lo/onBecameBackground$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-object p3, p0, Lo/ӏ$onPostMessage;->onMessageChannelReady:Ljava/io/File;

    return-void
.end method
