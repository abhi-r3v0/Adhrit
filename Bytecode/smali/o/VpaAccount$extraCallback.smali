.class final Lo/VpaAccount$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VpaAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field final onMessageChannelReady:I

.field final onNavigationEvent:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput p1, p0, Lo/VpaAccount$extraCallback;->onNavigationEvent:I

    .line 741
    iput p2, p0, Lo/VpaAccount$extraCallback;->onMessageChannelReady:I

    return-void
.end method
