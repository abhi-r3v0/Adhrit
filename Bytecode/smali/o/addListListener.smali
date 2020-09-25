.class final Lo/addListListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final extraCallback:Lo/log;


# direct methods
.method public constructor <init>(Lo/log;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/addListListener;->extraCallback:Lo/log;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lo/addListListener;->extraCallback:Lo/log;

    .line 1035
    iget-object p1, p1, Lo/log;->ICustomTabsCallback:Lo/removeListListener$onPostMessage;

    invoke-interface {p1}, Lo/removeListListener$onPostMessage;->ICustomTabsCallback()V

    return-void
.end method
