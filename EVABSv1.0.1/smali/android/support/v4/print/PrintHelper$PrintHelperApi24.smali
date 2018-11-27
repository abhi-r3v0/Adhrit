.class Landroid/support/v4/print/PrintHelper$PrintHelperApi24;
.super Landroid/support/v4/print/PrintHelper$PrintHelperApi23;
.source "PrintHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperApi24"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 876
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi23;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 878
    iput-boolean p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi24;->mIsMinMarginsHandlingCorrect:Z

    .line 879
    iput-boolean p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi24;->mPrintActivityRespectsOrientation:Z

    return-void
.end method
