.class final Lo/getAudioStream$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field public asInterface:Lo/binderDied;

.field public extraCallback:Lo/binderDied;

.field public onMessageChannelReady:Landroidx/fragment/app/Fragment;

.field public onNavigationEvent:Z

.field public onPostMessage:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
