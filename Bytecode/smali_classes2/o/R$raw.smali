.class final synthetic Lo/R$raw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/aY;

.field private final onPostMessage:Lo/R$styleable;


# direct methods
.method constructor <init>(Lo/R$styleable;Lo/aY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/R$raw;->onPostMessage:Lo/R$styleable;

    iput-object p2, p0, Lo/R$raw;->ICustomTabsCallback:Lo/aY;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/R$raw;->onPostMessage:Lo/R$styleable;

    iget-object v1, p0, Lo/R$raw;->ICustomTabsCallback:Lo/aY;

    invoke-virtual {v0, v1}, Lo/R$styleable;->ICustomTabsCallback(Lo/aY;)V

    return-void
.end method
