.class final Lo/setOnSetImageUriCompleteListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCropRect;


# direct methods
.method constructor <init>(Lo/setCropRect;)V
    .locals 0

    iput-object p1, p0, Lo/setOnSetImageUriCompleteListener;->ICustomTabsCallback:Lo/setCropRect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/setOnSetImageUriCompleteListener;->ICustomTabsCallback:Lo/setCropRect;

    invoke-virtual {v0}, Lo/ContactReverseSyncResponse;->ICustomTabsCallback()V

    return-void
.end method
