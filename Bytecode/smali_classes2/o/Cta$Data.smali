.class final synthetic Lo/Cta$Data;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/CardProgressJsonAdapter;

.field private final onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;


# direct methods
.method constructor <init>(Lo/CardProgressJsonAdapter;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Cta$Data;->ICustomTabsCallback:Lo/CardProgressJsonAdapter;

    iput-object p2, p0, Lo/Cta$Data;->onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/Cta$Data;->ICustomTabsCallback:Lo/CardProgressJsonAdapter;

    iget-object v1, p0, Lo/Cta$Data;->onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/CardProgressJsonAdapter;->onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method
