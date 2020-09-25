.class final Lo/CreateLoanOrderRequestJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Landroid/view/View;

.field private final synthetic onMessageChannelReady:Lo/StatementDetailsRequestJsonAdapter;

.field private final synthetic onNavigationEvent:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

.field private final synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V
    .locals 0

    iput-object p1, p0, Lo/CreateLoanOrderRequestJsonAdapter;->onNavigationEvent:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/CreateLoanOrderRequestJsonAdapter;->extraCallback:Landroid/view/View;

    iput-object p3, p0, Lo/CreateLoanOrderRequestJsonAdapter;->onMessageChannelReady:Lo/StatementDetailsRequestJsonAdapter;

    iput p4, p0, Lo/CreateLoanOrderRequestJsonAdapter;->onPostMessage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/CreateLoanOrderRequestJsonAdapter;->onNavigationEvent:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/CreateLoanOrderRequestJsonAdapter;->extraCallback:Landroid/view/View;

    iget-object v2, p0, Lo/CreateLoanOrderRequestJsonAdapter;->onMessageChannelReady:Lo/StatementDetailsRequestJsonAdapter;

    iget v3, p0, Lo/CreateLoanOrderRequestJsonAdapter;->onPostMessage:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V

    return-void
.end method
