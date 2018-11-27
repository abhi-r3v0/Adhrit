.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuTextItem"
.end annotation


# instance fields
.field private final mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field needsEmptyIcon:Z


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 0

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .line 648
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method
