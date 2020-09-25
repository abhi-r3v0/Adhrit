.class public final Lo/signInAnonymously$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ArrayCreatingInputMerger$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/signInAnonymously;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/signInAnonymously$extraCallback;

.field private synthetic onPostMessage:Lo/signInAnonymously$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/signInAnonymously$onNavigationEvent;Lo/signInAnonymously$extraCallback;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lo/signInAnonymously$3;->onPostMessage:Lo/signInAnonymously$onNavigationEvent;

    iput-object p2, p0, Lo/signInAnonymously$3;->ICustomTabsCallback:Lo/signInAnonymously$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;
    .locals 3

    .line 153
    iget-object v0, p0, Lo/signInAnonymously$3;->onPostMessage:Lo/signInAnonymously$onNavigationEvent;

    new-instance v1, Lo/signInAnonymously$extraCallback;

    iget-object v2, p0, Lo/signInAnonymously$3;->ICustomTabsCallback:Lo/signInAnonymously$extraCallback;

    invoke-direct {v1, v2}, Lo/signInAnonymously$extraCallback;-><init>(Lo/signInAnonymously$extraCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lo/signInAnonymously$onNavigationEvent;->extraCallback(Landroid/view/View;Lo/getVolumeAttributes;Lo/signInAnonymously$extraCallback;)Lo/getVolumeAttributes;

    move-result-object p1

    return-object p1
.end method
