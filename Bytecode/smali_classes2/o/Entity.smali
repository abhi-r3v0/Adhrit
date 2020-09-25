.class final Lo/Entity;
.super Landroid/database/ContentObserver;


# instance fields
.field private final synthetic extraCallback:Lo/EntityJsonAdapter;


# direct methods
.method public constructor <init>(Lo/EntityJsonAdapter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lo/Entity;->extraCallback:Lo/EntityJsonAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lo/Entity;->extraCallback:Lo/EntityJsonAdapter;

    invoke-virtual {p1}, Lo/EntityJsonAdapter;->ICustomTabsCallback()V

    return-void
.end method
