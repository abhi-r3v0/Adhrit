.class public final Lo/WinLuckyNumberCardJsonAdapter;
.super Lo/setCurrentItem$default;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>(Lo/setCurrentItem$default;)V
    .locals 11

    iget-object v1, p1, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    iget v2, p1, Lo/setCurrentItem$default;->onNavigationEvent:I

    iget v3, p1, Lo/setCurrentItem$default;->onPostMessage:I

    iget-boolean v4, p1, Lo/setCurrentItem$default;->extraCallback:Z

    iget v5, p1, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    iget v6, p1, Lo/setCurrentItem$default;->onTransact:I

    iget-object v7, p1, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    iget-boolean v8, p1, Lo/setCurrentItem$default;->onRelationshipValidationResult:Z

    iget-boolean v9, p1, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    iget-boolean v10, p1, Lo/setCurrentItem$default;->asBinder:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lo/setCurrentItem$default;-><init>(Ljava/lang/String;IIZII[Lo/setCurrentItem$default;ZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lo/WinLuckyNumberCardJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lo/WinLuckyNumberCardJsonAdapter;->onNavigationEvent:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget v0, p0, Lo/WinLuckyNumberCardJsonAdapter;->ICustomTabsCallback:I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
