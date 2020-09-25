.class final synthetic Lo/CardFooterJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field private final onNavigationEvent:Lo/CardProgressJsonAdapter;


# direct methods
.method constructor <init>(Lo/CardProgressJsonAdapter;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CardFooterJsonAdapter;->onNavigationEvent:Lo/CardProgressJsonAdapter;

    iput-object p2, p0, Lo/CardFooterJsonAdapter;->ICustomTabsCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/CardFooterJsonAdapter;->onNavigationEvent:Lo/CardProgressJsonAdapter;

    iget-object v1, p0, Lo/CardFooterJsonAdapter;->ICustomTabsCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/CardProgressJsonAdapter;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method
