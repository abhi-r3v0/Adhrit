.class public final Lo/calculateScrollDirectionForPosition$onPostMessage;
.super Lo/calculateScrollDirectionForPosition;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateScrollDirectionForPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dreamplug/widget/TextViewStyle$QUATERNARY;",
        "Lcom/dreamplug/widget/TextViewStyle;",
        "()V",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lo/calculateScrollDirectionForPosition$onPostMessage;

    invoke-direct {v0}, Lo/calculateScrollDirectionForPosition$onPostMessage;-><init>()V

    sput-object v0, Lo/calculateScrollDirectionForPosition$onPostMessage;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    .line 1010
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    .line 2010
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v9, 0x0

    move-object v4, p0

    .line 39
    invoke-direct/range {v4 .. v9}, Lo/calculateScrollDirectionForPosition;-><init>(FFFFB)V

    return-void
.end method
