.class abstract Lo/getAutoSizeTextAvailableSizes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSupportCompoundDrawablesTintList;


# instance fields
.field private onNavigationEvent:Lo/getSupportCompoundDrawablesTintList;


# direct methods
.method constructor <init>(Lo/getSupportCompoundDrawablesTintList;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lo/getAutoSizeTextAvailableSizes;->onNavigationEvent:Lo/getSupportCompoundDrawablesTintList;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/ActivityChooserView;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lo/getAutoSizeTextAvailableSizes;->onNavigationEvent:Lo/getSupportCompoundDrawablesTintList;

    invoke-interface {v0, p1}, Lo/getSupportCompoundDrawablesTintList;->ICustomTabsCallback(Lo/ActivityChooserView;)Z

    move-result p1

    return p1
.end method
