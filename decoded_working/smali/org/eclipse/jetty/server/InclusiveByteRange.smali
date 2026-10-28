.class public Lorg/eclipse/jetty/server/InclusiveByteRange;
.super Ljava/lang/Object;
.source "InclusiveByteRange.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field first:J

.field last:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/eclipse/jetty/server/InclusiveByteRange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "first"    # J
    .param p3, "last"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    .line 55
    iput-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    .line 59
    iput-wide p1, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    .line 60
    iput-wide p3, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    .line 61
    return-void
.end method

.method public static satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;
    .locals 15
    .param p0, "headers"    # Ljava/util/Enumeration;
    .param p1, "size"    # J

    .prologue
    .line 83
    const/4 v8, 0x0

    .line 87
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 89
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "header":Ljava/lang/String;
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, "=,"

    const/4 v12, 0x0

    invoke-direct {v10, v4, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    .local v10, "tok":Ljava/util/StringTokenizer;
    const/4 v9, 0x0

    .line 95
    .local v9, "t":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-eqz v11, :cond_0

    .line 99
    :try_start_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 101
    const-wide/16 v2, -0x1

    .line 102
    .local v2, "first":J
    const-wide/16 v5, -0x1

    .line 103
    .local v5, "last":J
    const/16 v11, 0x2d

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 104
    .local v0, "d":I
    if-ltz v0, :cond_2

    const-string v11, "-"

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_3

    .line 106
    :cond_2
    const-string v11, "bytes"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 108
    sget-object v11, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "Bad range format: {}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 141
    .end local v0    # "d":I
    .end local v2    # "first":J
    .end local v5    # "last":J
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-object v11, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "Bad range format: {}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v11, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 149
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "Bad range format: {}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    sget-object v11, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":I
    .restart local v2    # "first":J
    .restart local v5    # "last":J
    :cond_3
    if-nez v0, :cond_7

    .line 113
    add-int/lit8 v11, v0, 0x1

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 114
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 129
    :goto_2
    const-wide/16 v11, -0x1

    cmp-long v11, v2, v11

    if-nez v11, :cond_4

    const-wide/16 v11, -0x1

    cmp-long v11, v5, v11

    if-eqz v11, :cond_0

    .line 132
    :cond_4
    const-wide/16 v11, -0x1

    cmp-long v11, v2, v11

    if-eqz v11, :cond_5

    const-wide/16 v11, -0x1

    cmp-long v11, v5, v11

    if-eqz v11, :cond_5

    cmp-long v11, v2, v5

    if-gtz v11, :cond_0

    .line 135
    :cond_5
    cmp-long v11, v2, p1

    if-gez v11, :cond_1

    .line 137
    new-instance v7, Lorg/eclipse/jetty/server/InclusiveByteRange;

    invoke-direct {v7, v2, v3, v5, v6}, Lorg/eclipse/jetty/server/InclusiveByteRange;-><init>(JJ)V

    .line 138
    .local v7, "range":Lorg/eclipse/jetty/server/InclusiveByteRange;
    invoke-static {v8, v7}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "satRanges":Ljava/lang/Object;
    goto/16 :goto_1

    .line 117
    .end local v7    # "range":Lorg/eclipse/jetty/server/InclusiveByteRange;
    .end local v8    # "satRanges":Ljava/lang/Object;
    :cond_6
    sget-object v11, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "Bad range format: {}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 121
    :cond_7
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_8

    .line 123
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 124
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_2

    .line 127
    :cond_8
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v2

    goto :goto_2

    .line 155
    .end local v0    # "d":I
    .end local v2    # "first":J
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "last":J
    .end local v9    # "t":Ljava/lang/String;
    .end local v10    # "tok":Ljava/util/StringTokenizer;
    :cond_9
    const/4 v11, 0x1

    invoke-static {v8, v11}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v11

    return-object v11
.end method

.method public static to416HeaderRangeString(J)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # J

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "bytes */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getFirst()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    return-wide v0
.end method

.method public getFirst(J)J
    .locals 6
    .param p1, "size"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 161
    iget-wide v2, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 163
    iget-wide v2, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    sub-long v0, p1, v2

    .line 164
    .local v0, "tf":J
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 165
    const-wide/16 v0, 0x0

    .line 168
    .end local v0    # "tf":J
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    goto :goto_0
.end method

.method public getLast()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    return-wide v0
.end method

.method public getLast(J)J
    .locals 6
    .param p1, "size"    # J

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 174
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 175
    sub-long v0, p1, v4

    .line 179
    :goto_0
    return-wide v0

    .line 177
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    .line 178
    :cond_1
    sub-long v0, p1, v4

    goto :goto_0

    .line 179
    :cond_2
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    goto :goto_0
.end method

.method public getSize(J)J
    .locals 4
    .param p1, "size"    # J

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getLast(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toHeaderRangeString(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 193
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getLast(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 217
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-wide v1, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
