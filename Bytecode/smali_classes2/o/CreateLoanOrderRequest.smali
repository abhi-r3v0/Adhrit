.class final synthetic Lo/CreateLoanOrderRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CreateLoanOrderRequest;->extraCallback:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/CreateLoanOrderRequest;->extraCallback:Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->updateVisuals()V

    return-void
.end method
