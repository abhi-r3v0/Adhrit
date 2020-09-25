.class final Lo/StashProcessStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic extraCallback:Lo/CredColorFormat;


# direct methods
.method constructor <init>(Lo/CredColorFormat;)V
    .locals 0

    iput-object p1, p0, Lo/StashProcessStatus;->extraCallback:Lo/CredColorFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lo/StashProcessStatus;->extraCallback:Lo/CredColorFormat;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
