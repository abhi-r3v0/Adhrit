.class final Landroid/support/v4/widget/SearchViewCompat$2;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SearchViewCompat;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)Landroid/widget/SearchView$OnCloseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)V
    .locals 0

    .line 209
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$2;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$2;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;

    invoke-interface {v0}, Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;->onClose()Z

    move-result v0

    return v0
.end method
