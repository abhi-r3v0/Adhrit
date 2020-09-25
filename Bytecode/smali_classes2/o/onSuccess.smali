.class final synthetic Lo/onSuccess;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onNavigationEvent:Lo/Badges;


# direct methods
.method constructor <init>(Lo/Badges;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onSuccess;->onNavigationEvent:Lo/Badges;

    iput-object p2, p0, Lo/onSuccess;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/onSuccess;->onNavigationEvent:Lo/Badges;

    iget-object v1, p0, Lo/onSuccess;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/Badges;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method
