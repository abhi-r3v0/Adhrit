.class final Lo/getCustomActions$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getInterfaceDescriptor"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput p1, p0, Lo/getCustomActions$getInterfaceDescriptor;->ICustomTabsCallback:I

    .line 1064
    iput-object p2, p0, Lo/getCustomActions$getInterfaceDescriptor;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1069
    iget-object v0, p0, Lo/getCustomActions$getInterfaceDescriptor;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lo/getCustomActions$getInterfaceDescriptor;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
