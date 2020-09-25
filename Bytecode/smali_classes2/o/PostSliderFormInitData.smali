.class final Lo/PostSliderFormInitData;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemRequestDataJsonAdapter;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/ValuesJsonAdapter;


# direct methods
.method constructor <init>(Lo/ValuesJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/PostSliderFormInitData;->ICustomTabsCallback:Lo/ValuesJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/PostSliderFormInitData;->ICustomTabsCallback:Lo/ValuesJsonAdapter;

    invoke-static {p1}, Lo/ValuesJsonAdapter;->extraCallback(Lo/ValuesJsonAdapter;)V

    return-void

    :cond_0
    iget-object p1, p0, Lo/PostSliderFormInitData;->ICustomTabsCallback:Lo/ValuesJsonAdapter;

    invoke-static {p1}, Lo/ValuesJsonAdapter;->ICustomTabsCallback(Lo/ValuesJsonAdapter;)V

    return-void
.end method
