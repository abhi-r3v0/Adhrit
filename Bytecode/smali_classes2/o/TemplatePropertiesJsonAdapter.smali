.class final synthetic Lo/TemplatePropertiesJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final extraCallback:Landroid/content/Context;

.field private final onPostMessage:Lo/Template;


# direct methods
.method constructor <init>(Lo/Template;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TemplatePropertiesJsonAdapter;->onPostMessage:Lo/Template;

    iput-object p2, p0, Lo/TemplatePropertiesJsonAdapter;->extraCallback:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/TemplatePropertiesJsonAdapter;->onPostMessage:Lo/Template;

    iget-object v1, p0, Lo/TemplatePropertiesJsonAdapter;->extraCallback:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->ICustomTabsCallback$Stub$Proxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
