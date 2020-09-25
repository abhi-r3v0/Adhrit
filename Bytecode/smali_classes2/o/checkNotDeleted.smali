.class final Lo/checkNotDeleted;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/isDataCollectionDefaultEnabled;


# direct methods
.method constructor <init>(Lo/isDataCollectionDefaultEnabled;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/checkNotDeleted;->ICustomTabsCallback:Lo/isDataCollectionDefaultEnabled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/checkNotDeleted;->ICustomTabsCallback:Lo/isDataCollectionDefaultEnabled;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/isDataCollectionDefaultEnabled;->onPostMessage(Lo/isDataCollectionDefaultEnabled;I)V

    return-void
.end method
