.class final Lo/makeOptionalFitsSystemWindows$3;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/makeOptionalFitsSystemWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/makeOptionalFitsSystemWindows;


# direct methods
.method constructor <init>(Lo/makeOptionalFitsSystemWindows;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lo/makeOptionalFitsSystemWindows$3;->ICustomTabsCallback:Lo/makeOptionalFitsSystemWindows;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 258
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 259
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$3;->ICustomTabsCallback:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsService(Lo/makeOptionalFitsSystemWindows;)V

    return-void
.end method
