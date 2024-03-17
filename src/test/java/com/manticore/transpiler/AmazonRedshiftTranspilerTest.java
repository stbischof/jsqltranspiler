/**
 * Manticore Projects JSQLTranspiler is a multiple SQL Dialect to DuckDB Translation Software.
 * Copyright (C) 2024 Andreas Reichel <andreas@manticore-projects.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
package com.manticore.transpiler;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

public class AmazonRedshiftTranspilerTest extends JSQLTranspilerTest {
  public final static String TEST_FOLDER_STR =
      "build/resources/test/com/manticore/transpiler/amazon_redshift";

  static Stream<Map.Entry<File, List<SQLTest>>> getSqlTestMap() {
    return getSqlTestMap(new File(TEST_FOLDER_STR).listFiles(FILENAME_FILTER), JSQLTranspiler.Dialect.AMAZON_REDSHIFT, JSQLTranspiler.Dialect.DUCK_DB);
  }

  @ParameterizedTest(name = "{index} {0}: {1}")
  @MethodSource("getSqlTestMap")
  void transpile(Map.Entry<File, List<SQLTest>> entry) throws Exception {
    super.transpile(entry);
  }

}
