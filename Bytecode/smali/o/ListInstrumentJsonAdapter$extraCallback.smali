.class public final Lo/ListInstrumentJsonAdapter$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ListInstrumentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public extraCallback:Lo/component3;

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Lo/ListInstrumentJsonAdapter$extraCallback;->onNavigationEvent()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lo/ListInstrumentJsonAdapter$extraCallback;->extraCallback:Lo/component3;

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lo/ListInstrumentJsonAdapter$extraCallback;->onMessageChannelReady:Z

    .line 81
    iput-object v0, p0, Lo/ListInstrumentJsonAdapter$extraCallback;->onNavigationEvent:Landroid/net/Uri;

    return-void
.end method
