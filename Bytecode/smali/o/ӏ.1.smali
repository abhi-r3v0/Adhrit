.class public final Lo/ӏ;
.super Lo/onBecameBackground;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ӏ$onPostMessage;,
        Lo/ӏ$onNavigationEvent;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lo/onBecameBackground;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady()Lo/onBecameBackground$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lo/ӏ$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/ӏ$onNavigationEvent;-><init>(Lo/ӏ;)V

    return-object v0
.end method
