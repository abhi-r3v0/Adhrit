.class final synthetic Lo/dd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/dd;->ICustomTabsCallback:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/dd;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/MethodNotAllowedException;->extraCallback(Landroid/content/Context;)Lo/onPreExecute;

    move-result-object v0

    return-object v0
.end method
