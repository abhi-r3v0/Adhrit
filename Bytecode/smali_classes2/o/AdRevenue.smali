.class final Lo/AdRevenue;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c$onPostMessage;


# instance fields
.field private final extraCallback:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/AdRevenue;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 1

    iget v0, p0, Lo/AdRevenue;->extraCallback:I

    .line 1000
    invoke-static {v0, p1}, Lo/j;->extraCallback(ILo/allow$onNavigationEvent;)V

    return-void
.end method
