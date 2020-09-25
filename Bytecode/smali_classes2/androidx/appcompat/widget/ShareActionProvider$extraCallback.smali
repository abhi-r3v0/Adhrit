.class final Landroidx/appcompat/widget/ShareActionProvider$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic extraCallback:Landroidx/appcompat/widget/ShareActionProvider;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ShareActionProvider;)V
    .locals 0

    .line 397
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider$extraCallback;->extraCallback:Landroidx/appcompat/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChooseActivity(Landroidx/appcompat/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 1

    .line 402
    iget-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider$extraCallback;->extraCallback:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object p1, p1, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider$extraCallback;->extraCallback:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object p1, p1, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider$extraCallback;->extraCallback:Landroidx/appcompat/widget/ShareActionProvider;

    invoke-interface {p1, v0, p2}, Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroidx/appcompat/widget/ShareActionProvider;Landroid/content/Intent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
