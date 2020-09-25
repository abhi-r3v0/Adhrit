.class final Lo/FieldRequestModelJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/ValuesJsonAdapter;


# direct methods
.method constructor <init>(Lo/ValuesJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/FieldRequestModelJsonAdapter;->onNavigationEvent:Lo/ValuesJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/FieldRequestModelJsonAdapter;->onNavigationEvent:Lo/ValuesJsonAdapter;

    invoke-static {v0}, Lo/ValuesJsonAdapter;->ICustomTabsCallback(Lo/ValuesJsonAdapter;)V

    return-void
.end method
