.class final synthetic Lo/SwipeActions$$Parcelable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/SupportedJsonAdapter;

.field private final onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/SupportedJsonAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SwipeActions$$Parcelable;->extraCallback:Lo/SupportedJsonAdapter;

    iput p2, p0, Lo/SwipeActions$$Parcelable;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/SwipeActions$$Parcelable;->extraCallback:Lo/SupportedJsonAdapter;

    iget v1, p0, Lo/SwipeActions$$Parcelable;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Lo/SupportedJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method
