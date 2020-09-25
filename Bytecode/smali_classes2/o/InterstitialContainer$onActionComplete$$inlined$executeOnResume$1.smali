.class final Lo/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic extraCallback:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

.field private final synthetic onPostMessage:Lo/StatementDetailsRequestJsonAdapter;


# direct methods
.method constructor <init>(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;Lo/StatementDetailsRequestJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->extraCallback:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onPostMessage:Lo/StatementDetailsRequestJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->extraCallback:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onPostMessage:Lo/StatementDetailsRequestJsonAdapter;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
