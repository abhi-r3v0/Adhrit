.class Lo/PayRequestJsonAdapter$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PayRequestJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/PayRequestJsonAdapter;


# direct methods
.method private constructor <init>(Lo/PayRequestJsonAdapter;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lo/PayRequestJsonAdapter$ICustomTabsCallback;->extraCallback:Lo/PayRequestJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/PayRequestJsonAdapter;Lo/PayRequestJsonAdapter$4;)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lo/PayRequestJsonAdapter$ICustomTabsCallback;-><init>(Lo/PayRequestJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lo/PayRequestJsonAdapter$ICustomTabsCallback;->extraCallback:Lo/PayRequestJsonAdapter;

    invoke-static {v0, p1}, Lo/PayRequestJsonAdapter;->ICustomTabsCallback(Lo/PayRequestJsonAdapter;Landroid/view/View;)V

    return-void
.end method
