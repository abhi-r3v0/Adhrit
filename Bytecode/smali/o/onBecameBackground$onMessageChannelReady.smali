.class public final Lo/onBecameBackground$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onBecameBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final extraCallback:Lo/onBecameBackground$extraCallback;

.field public final onMessageChannelReady:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lo/onBecameBackground$extraCallback;Ljava/io/InputStream;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lo/onBecameBackground$onMessageChannelReady;->extraCallback:Lo/onBecameBackground$extraCallback;

    .line 140
    iput-object p2, p0, Lo/onBecameBackground$onMessageChannelReady;->onMessageChannelReady:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lo/onBecameBackground$onMessageChannelReady;->onMessageChannelReady:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
