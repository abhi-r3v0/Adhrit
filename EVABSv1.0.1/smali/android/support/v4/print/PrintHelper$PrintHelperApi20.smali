.class Landroid/support/v4/print/PrintHelper$PrintHelperApi20;
.super Landroid/support/v4/print/PrintHelper$PrintHelperApi19;
.source "PrintHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperApi20"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 839
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 843
    iput-boolean p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi20;->mPrintActivityRespectsOrientation:Z

    return-void
.end method
