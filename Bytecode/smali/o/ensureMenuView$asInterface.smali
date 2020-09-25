.class final Lo/ensureMenuView$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenuView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getThumbTintList<",
        "+",
        "Lo/getRadius;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/utils/AlertData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$asInterface;->onMessageChannelReady:Lo/ensureMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 35
    check-cast p1, Lo/getThumbTintList;

    if-eqz p1, :cond_1

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1179
    :goto_0
    check-cast p1, Lo/getRadius;

    if-eqz p1, :cond_1

    .line 1182
    new-instance v0, Lo/onTransact$onNavigationEvent;

    iget-object v1, p0, Lo/ensureMenuView$asInterface;->onMessageChannelReady:Lo/ensureMenuView;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/onTransact$onNavigationEvent;-><init>(Landroid/content/Context;)V

    .line 3005
    iget-object v1, p1, Lo/getRadius;->onPostMessage:Ljava/lang/String;

    .line 1183
    check-cast v1, Ljava/lang/CharSequence;

    .line 3377
    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 4004
    iget-object v1, p1, Lo/getRadius;->onMessageChannelReady:Ljava/lang/String;

    .line 1184
    check-cast v1, Ljava/lang/CharSequence;

    .line 4418
    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onTransact:Ljava/lang/CharSequence;

    .line 5006
    iget-object v1, p1, Lo/getRadius;->onNavigationEvent:Ljava/lang/String;

    .line 1185
    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lo/ensureMenuView$asInterface$2;

    invoke-direct {v2, p1}, Lo/ensureMenuView$asInterface$2;-><init>(Lo/getRadius;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    .line 5486
    iget-object v3, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asInterface:Ljava/lang/CharSequence;

    .line 5487
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/content/DialogInterface$OnClickListener;

    .line 6009
    iget-boolean p1, p1, Lo/getRadius;->extraCallback:Z

    .line 6579
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-boolean p1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService:Z

    .line 1190
    invoke-virtual {v0}, Lo/onTransact$onNavigationEvent;->onNavigationEvent()Lo/onTransact;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
