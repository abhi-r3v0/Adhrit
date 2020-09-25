.class final Lo/write$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/write;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Landroidx/appcompat/widget/MenuPopupWindow;

.field public final extraCallback:I

.field public final onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/MenuPopupWindow;Lo/AudioAttributesImplBaseParcelizer;I)V
    .locals 0

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput-object p1, p0, Lo/write$ICustomTabsCallback;->ICustomTabsCallback:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 802
    iput-object p2, p0, Lo/write$ICustomTabsCallback;->onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer;

    .line 803
    iput p3, p0, Lo/write$ICustomTabsCallback;->extraCallback:I

    return-void
.end method
