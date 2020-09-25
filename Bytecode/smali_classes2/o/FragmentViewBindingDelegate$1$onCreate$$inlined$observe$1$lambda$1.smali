.class final Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:Lo/setReferenceId;

.field private final onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/setReferenceId;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->extraCallback:Lo/setReferenceId;

    .line 4
    iput p2, p0, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Lo/setReferenceId;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->extraCallback:Lo/setReferenceId;

    return-object v0
.end method

.method final extraCallback()I
    .locals 1

    .line 6
    iget v0, p0, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->onNavigationEvent:I

    return v0
.end method
